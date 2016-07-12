/**slide
 * Created by sqd on 15-11-10.
 */

$(document).ready(function () {
    $("#input").spinner();
    $("#input").spinner("value","10");

    $("#btn").on("click", function () {
        alert($("#input").spinner("value"))
    })
});