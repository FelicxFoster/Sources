var events = require('events');

var eventEmitter = new events.EventEmitter();

var eventHandler = function connected() {
	console.log('Connected successful!');
	eventEmitter.emit('data_received');
};

eventEmitter.on('connection', eventHandler);

eventEmitter.on('data_received', function () {
	console.log("Received data successful!");	
});

eventEmitter.emit('connection');

console.log('Program stop.');