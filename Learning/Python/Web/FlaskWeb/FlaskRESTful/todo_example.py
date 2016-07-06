from flask import Flask, request
from flask_restful import Resource, Api


app = Flask(__name__)
api = Api(app)

todos = {}

class TodoSimple(Resource):
    """
    You can try this example as follow:
        $ curl http://localhost:5000/todo1 -d "data=Remember the milk" -X PUT
        $ curl http://lcoalhost:5000/todo1
        {"todo1": "Remember the milk"}
    Or from python if you have requests:
        >>> from requests import put, get
        >>> put('http://localhost:5000/todo1', data={'data': 'Remember the milk'}).json
        {u'todo1': u'Remember the milk'}
    """

    def get(self, todo_id):
        return {todo_id: todos[todo_id]}

    def put(self):
        todos[todo_id] = request.form['data']
        return {todo_id: todos[todo_id]}

api.add_resource(TodoSimple, '/<string:todo_id>')


if __name__ == '__main__':
    app.run(debug=False)
