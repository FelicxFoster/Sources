$(document).ready(function () {
    $("body").click("click", bodyHandler);
    $("div").click("click", divHandler1);
    $("div").click("click", divHandler2);
});

function bodyHandler(event){
    //console.log("hello");
    conlog(event);
}
function divHandler1(event){
    conlog(event);
    //event.stopPropagation();
    event.stopImmediatePropagation();
}

function divHandler2(event){
    conlog(event);
}

function conlog(event){
    console.log(event);
}