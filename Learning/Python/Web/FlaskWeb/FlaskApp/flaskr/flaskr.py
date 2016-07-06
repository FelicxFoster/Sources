from flask import Flask, request, session, g, redirect, url_for, abort, render_template, flash
import sqlite3
from contextlib import closing
import random

app = Flask(__name__)


# configuration
DATABASE = 'flaskr.db'
DEBUG = True
SECRET_KEY = 'some secret key'

app.config.from_object(__name__)


STYLES = ('default', 'danger', 'success', 'info', 'warning')


def connect_db():
    return sqlite3.connect(app.config['DATABASE'])


def init_db():
    with closing(connect_db()) as db:
        with app.open_resource('schema.sql', 'r') as f:
            db.cursor().executescript(f.read())
        db.commit()


def initdb_command():
    """Creates the database tables."""
    init_db()
    print('Initialized the database.')


def get_db():
    """Opens a new database connection if there is none yet for the
    current application context.
    """
    if not hasattr(g, 'sqlite_db'):
        g.sqlite_db = connect_db()
    return g.sqlite_db


@app.teardown_appcontext
def close_db(error):
    """Closes the database again at the end of the request."""
    if hasattr(g, 'sqlite_db'):
        g.sqlite_db.close()


@app.route('/')
def show_entries():
    style = random.choice(STYLES)
    db = get_db()
    cur = db.execute('select id, title, text from entries order by id desc')
    entries = [dict(id=row[0], title=row[1], text=row[2])
               for row in cur.fetchall()]
    if not entries:
        flash('No entries here so far')
    return render_template('show_entries.html', entries=entries, style=style)


@app.route('/add/', methods=['POST', 'GET'])
def add():
    if not session.get('logged_in'):
        abort(401)
    db = get_db()
    db.execute('insert into entries (title, text) values (?, ?)',
               [request.form['title'], request.form['text']])
    db.commit()
    flash("New entry was successfully posted!")
    return redirect(url_for('show_entries'))


@app.route('/<id>/delete/')
def delete(id):
    db = get_db()
    cur = db.cursor()
    cur.execute('delete from entries where id=?', [id])
    db.commit()
    flash("An entry was successfully deleted!")
    return redirect(url_for('show_entries'))


@app.route('/<id>/update/', methods=['POST', 'GET'])
def update(id):
    if request.method == 'POST':
        db = get_db()
        cur = db.cursor()
        cur.execute('update entries set title=?, text=? where id=?',
                    [request.form['title'], request.form['text'], id])
        db.commit()
        flash("An entry was successfully updated!")
    return redirect(url_for('show_entries'))


@app.route('/login/', methods=['POST', 'GET'])
def login():
    error = None
    if request.method == 'POST':

        username, password = request.form['username'], request.form['password']

        cur = get_db().cursor()

        expected_password = cur.execute(
            'select password from users where username=?', [username]).fetchone()

        if not username:
            error = 'Please input an username'
        elif not password:
            error = 'Please input a password'

        elif not expected_password:
            error = 'Invalid username'
        elif password not in expected_password:
            error = 'Invalid password'
        else:
            session['logged_in'] = True
            session['username'] = username
            flash("Welcome %s ^_^" % username)
            return redirect(url_for('show_entries'))

    return render_template('login.html', error=error)


@app.route('/logout/')
def logout():
    session.pop('logged_in', None)
    flash('You were logged out')
    return redirect(url_for('show_entries'))


@app.route('/register/', methods=['POST', 'GET'])
def register():
    error = None
    if request.method == 'POST':

        db = connect_db()
        cur = db.cursor()

        username, email, password1, password2 = request.form[
            'username'], request.form['email'], request.form['password1'], request.form['password2']

        # return a list of tuple
        all_users = cur.execute('select username from users').fetchall()

        if (username,) in all_users:
            error = "Username exist already"

        elif not password1 or not password2:
            error = "Please input a password"

        elif password1 != password2:
            error = 'Password does not match'
        else:

            cur.execute('insert into users (username, password, email)  values(?, ?, ?)',
                        [username, password1, email])
            db.commit()
            flash('Register succesffuly and go to login')
            return redirect(url_for('login'))

    return render_template('register.html', error=error)


@app.errorhandler(404)
def pange_not_found(error):
    return render_template(url_for('404.html'))


if __name__ == '__main__':
    app.run(debug=True)
