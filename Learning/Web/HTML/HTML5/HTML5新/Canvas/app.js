/**
 * Created by SQD on 2015/11/8.
 */

var CANVAS_WIDTH=800, CANVAS_HEIGHT=800;
var mycanvas, context;

window.onload = function(){
    createCanvas();
    //drawRect();
    drawImage();
}

function createCanvas(){
    document.body.innerHTML = "<canvas id=\"mycanvas\" width=\"" + CANVAS_HEIGHT + "\" height=\""+CANVAS_HEIGHT +"\" ></canvas>";
    mycanvas = document.getElementById("mycanvas");
    context  = mycanvas.getContext("2d");
}

function drawRect(){
    context.fillStyle = "#00FF00";
    //context.rotate(45)
    context.scale(2,0.5);
    context.translate(200, 200);
    context.fillRect(0,0,200,200);
}

function drawImage(){
    var img = new Image();
    img.src = "0.jpg";
    img.onload = function () {
        context.drawImage(img, 0, 0);
    }
}