
var btn;

$(document).ready(function () {
    btn = $("#btn");
    btn.click(function () {
        var e = jQuery.Event("MyEvent");
        btn.trigger(e);
    });

    btn.bind("MyEvent", function (event) {
        console.log(event);
    });
});