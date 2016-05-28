var express = require('express');

var app = express();

app.get('/', function(req, res) {
	res.send('<h1>Hello from Express!</h1>');
});

app.listen(3000);

console.log('Server is running at localhost:3000...');