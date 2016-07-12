/**
 * Created by sqd on 15-11-10.
 */

$(document).ready(function () {
    $("#btn").button();
    $("#selector").selectable();
    $("#btn").on("click", function () {
        //alert("Hello");
        if($("#right").hasClass("ui-selected")){
            alert("Bing go!");
        }else{
            alert("Try again.");
        }
    });
});