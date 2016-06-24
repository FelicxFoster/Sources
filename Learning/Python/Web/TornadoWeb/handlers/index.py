import tornado.web
from methods.db import get_db


class IndexHandler(tornado.web.RequestHandler):

    def get(self):
        return self.render('index.html')

    def post(self):
        username = self.get_argument('username')
        password = self.get_argument('password')

        conn, cur = get_db()
        result = cur.execute('select password from `users` where username=?', [username]).fetchone()
        if result:
            if result[0] == password:
                self.set_secure_cookie(username, result[0])
                self.write(username)
            else:
                self.write('Your password is not right!')
        else:
            self.write('This username is not exists!')
