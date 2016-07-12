/**
 * Created by SQD on 2015/11/4.
 */

window.onload = function () {
    imgLocation("container", "box");

    var imgData = {    //JSON字符串模拟数据源
        "data": [{"src":"2.jpg"}, {"src":"3.jpg"}, {"src":"4.jpg"}, {"src":"5.jpg"}]
    };

    window.onscroll = function (){
        if( checkFlag() ){
            var cparent = document.getElementById("container");
            for ( var i=0; i<imgData.data.length; i++ ){
                var ccontent = document.createElement("div");
                ccontent.className="box";
                cparent.appendChild(ccontent);
                var boxing = document.createElement("div");
                boxing.className = "box_img";
                ccontent.appendChild(boxing);
                var img = document.createElement("img");
                img.src = "images/"+imgData.data[i].src;
                boxing.appendChild(img);
            }
            imgLocation("container", "box");
        }
    };
};

function checkFlag(){
    var cparent = document.getElementById("container");
    var ccontent = getChildElement(cparent, "box");
    var lastContentHeight = ccontent[ccontent.length-1].offsetTop;
    var scrollTop = document.documentElement.scrollTop||document.body.scrollTop;
    var pageHeight = document.documentElement.clientHeight||document.body.clientHeight;
    console.log(lastContentHeight, scrollTop, pageHeight);
    if ( lastContentHeight < scrollTop + pageHeight ){
        return true;
    }
}

function imgLocation(parent, content){
    //将parent下所有的content全部取出
    var cparent = document.getElementById(parent);
    var ccontent = getChildElement(cparent, content);
    //console.log(ccontent);
    var imgWidth = ccontent[0].offsetWidth;
    var cols = Math.floor(document.documentElement.clientWidth / imgWidth);
    cparent.style.cssText = "width:"+imgWidth*cols+"px; margin:0px auto";


    var BoxHeightArr = [];
    for ( var i=0; i<ccontent.length; i++ ){
        if( i < cols ){             //只得到第一行
            BoxHeightArr[i] = ccontent[i].offsetHeight;
            //console.log(BoxHeightArr[i]);
        }else{
            var minHeight = Math.min.apply(null, BoxHeightArr);
            var minIndex = getMinHeightLocation(BoxHeightArr, minHeight);

            //console.log(minHeight);
            ccontent[i].style.position = "absolute";
            ccontent[i].style.top = minHeight+"px";
            ccontent[i].style.left = ccontent[minIndex].offsetLeft + "px";
            BoxHeightArr[minIndex] += ccontent[i].offsetHeight;

        }
    }
}
function getMinHeightLocation(BoxHeightArr, minHeight){
    for ( var i=0; i<BoxHeightArr.length; i++ ){
        if( BoxHeightArr[i] == minHeight ){
            return i;
        }
    }
}


function getChildElement(parent, content){
    var contentArr = [];
    var allcontent = parent.getElementsByTagName("*");
    for( var i=0; i<allcontent.length; i++){
        if ( allcontent[i].className == content ){
            contentArr.push(allcontent[i]);
        }
    }
    return contentArr;
}