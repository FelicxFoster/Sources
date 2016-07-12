/**
 * Created by SQD on 2015/11/4.
 */

function People(name){    //作为类使用
    this._name = name;
}
People.prototype.say = function hello(){
    alert("Peo-Hello: "+this._name);
};

function Student(name, age){
    this._name = name;
}
Student.prototype = new People();  //继承
var superSay = Student.prototype.say;
Student.prototype.say = function () {   //复写父类方法
    superSay.call(this);          //这里会调用父类的say
    alert("Stu-Hello: "+this._name);
};

var s = new Student('Zoro');
s.say();                //调用子类




