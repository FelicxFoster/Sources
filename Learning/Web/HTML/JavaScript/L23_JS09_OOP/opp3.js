/**
 * Created by SQD on 2015/11/4.
 */


function Person(){
    var _this = {};
    _this.sayHello = function () {
        alert("Hello");
    };
    return _this;
}

function Teacher(){
    var _this = Person();
    return _this;
}

var t = Teacher();
t.sayHello();

