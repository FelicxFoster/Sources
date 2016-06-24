import tornado.ioloop
import tornado.options
import tornado.httpserver
from tornado.options import define, options

from application import application

define('port', default=8000, help='run on the given port', type=int)\



def main():
    tornado.options.parse_command_line()
    http_server = tornado.httpserver.HTTPServer(application)
    http_server.listen(options.port)

    print('Server is running at http://localhost:%s' % options.port)
    print('Quit the server with Ctrl-C')

    tornado.ioloop.IOLoop.instance().start()


if __name__ == '__main__':
    main()
