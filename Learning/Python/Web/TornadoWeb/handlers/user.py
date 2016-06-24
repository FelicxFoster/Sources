import tornado.web
from methods.db import get_db


class UserHandler(tornado.web.RequestHandler):

    def get(self):
        username = self.get_argument('user')
        conn, cur = get_db()
        user_infos = cur.execute('select username, password from users where username=?', [username]).fetchone()
        self.render('user.html', user_infos=user_infos)
