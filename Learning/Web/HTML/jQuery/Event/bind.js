/**
 * Created by SQD on 2015/11/9.
 */

$(document).ready(function () {
   //$("#clickMeButton").click(function(){
   //   alert("hello");
   //});
/*
    $("#clickMeButton").bind("click", clickHandler1);
    $("#clickMeButton").bind("click", clickHandler2);
    $("#clickMeButton").unbind("click", clickHandler1);
*/

    $("#clickMeButton").on("click", clickHandler1);
    $("#clickMeButton").on("click", clickHandler2);
    $("#clickMeButton").off("click", clickHandler1);
});

function clickHandler1(e){
    console.log("clickHandler1");
}
function clickHandler2(e){
    console.log("clickHandler2");
}
