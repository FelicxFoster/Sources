from urls import url

import tornado.web
import os


BASE_PATH = os.path.dirname(__file__)

settings = dict(
    template_path=os.path.join(BASE_PATH, 'templates'),
    static_path=os.path.join(BASE_PATH, 'statics'),
    cookie_secret="bZJc2sWbQLKos6GkHn/VB9oXwQt8S0R0kRvJ5/xJ89E=",
    xsef_cookies=True,
    debug=True
)

application = tornado.web.Application(
    handlers=url,
    **settings
)
