.. introduction

============
Introduction
============

Application servers such as Django and Ruby-on-Rails have been developed without intention to create
long living connections. Therefore these frameworks are not a good fit for web applications, which
shall react on asynchronous events initiated by the server. One feasible solution for clients
wishing to be notified for events is to continuously poll the server using an XMLHttpRequest (Ajax).
This however produces a lot of traffic, and depending on the granularity of the polling interval,
it is not a viable solution for real time events such as chat applications or browser based
multiplayer games.