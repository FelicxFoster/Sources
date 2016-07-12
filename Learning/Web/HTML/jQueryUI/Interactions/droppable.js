/**
 * Created by sqd on 15-11-10.
 */

$(document).ready(function () {
    $("#div1").draggable();
    $("#div2").droppable();

    $("#div2").on("drop", function (event, ui) {
        //alert(event);
        $("#div2").text("drop事件触发");
    });
});