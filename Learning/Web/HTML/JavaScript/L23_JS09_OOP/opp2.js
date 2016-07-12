/**
 * Created by SQD on 2015/11/4.
 */

/*闭包*/
(function (){
    var n = "Luffy";     //只能在内部访问n
    function People(name){
        this._name = name;
    }
    People.prototype.say = function hello(){
        alert("Peo-Hello: "+this._name+n);
    };
    window.People = People;   //用于对外访问的接口   API
}());

(function () {
    function Student(name){
        this._name = name;
    }
    Student.prototype = new People();  //继承
    var superSay = Student.prototype.say;
    Student.prototype.say = function () {   //复写父类方法
        superSay.call(this);          //这里会调用父类的say
        alert("Stu-Hello: "+this._name);
    };
    window.Student = Student;
}());

var s = new Student('Zoro');
s.say();                //调用子类




