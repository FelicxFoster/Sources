import os
import flaskr
import unittest
import tempfile


class FlaskrTestCase(unittest.TestCase):

    def setUp(self):
        self.db_fd, flaskr.app.config['DATABASE'] = tempfile.mkstemp()
        flaskr.app.config['T5ESTING'] = True
        self.app = flaskr.app.test_client()
        flaskr.init_db()

    def tearDown(self):
        os.close(self.db_fd)
        os.unlink(flaskr.app.config['DATABASE'])

    def login(self, username, password):
        return self.app.post('/login/', data=dict(
            username=username,
            password=password
        ), follow_redirects=True)

    def logout(self):
        return self.app.get('/logout/', follow_redirects=True)

    def test_empty_db(self):
        rv = self.app.get('/')
        assert b'No entries here so far' in rv.data

    def test_login_logout(self):
        rv = self.login('admin', 'admin')
        assert b'You are logged in. ^_^' in rv.data
        rv = self.login('adminx', 'admin')
        assert b'Invalid username!' in rv.data
        rv = self.login('admin', 'adminx')
        assert b'Invalid password!' in rv.data
        rv = self.logout()
        assert b'You were logged out' in rv.data

    def test_message(self):
        self.login('admin', 'admin')
        rv = self.app.post('/add/', data=dict(
            title="<Hello>",
            text="<p>Hello world</p>"
        ), follow_redirects=True)
        assert b'No entries is here so far' not in rv.data
        assert b'&lt;Hello&gt;' in rv.data
        assert b'<p>Hello world</p>' in rv.data


if __name__ == '__main__':
    unittest.main()
