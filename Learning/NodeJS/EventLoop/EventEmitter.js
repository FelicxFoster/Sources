var events = require('events');

var event = new events.EventEmitter();

event.on('some_event', function () {	
	console.log('some_event was triggered.');
});

event.on('some_event', function () {	
	console.log('some_event was triggered too.');
});

setTimeout( function() {
	event.emit('some_event');
}, 2000);