/**
 * Created by sqd on 15-11-10.
 */

$(document).ready(function () {
    var autotags = ["iwen", "ime", "html", "css", "javascript", "python", "ruby", "jquery"];
    $("#tags").autocomplete({
        source:autotags
    });
})