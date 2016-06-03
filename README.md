# cycriptDemo
本地注入静态库测试cycript
cd 进入Cycript_0,运行./cycript -r 127.0.0.1:8000
cycript 资料：
http://www.cycript.org/manual/#4dd1ca6b-2bd5-48e4-a0ee-06b0947880f5
常用函数：打印出方法和实例

function printMethods(className) {
var count = new new Type("I");
var methods =      class_copyMethodList(objc_getClass(className), count);
var methodsArray = [];
for(var i = 0; i < *count; i++) {
var method = methods[i];
methodsArray.push({selector:method_getName(method), implementation:method_getImplementation(method)});
}
return methodsArray;
}

function printIvars(className) {
var count = new new Type("I");
var ivars =      class_copyIvarList(objc_getClass(className), count);
var methodsArray = [];
for(var i = 0; i < *count; i++) {
var signIvar = ivars[i];
methodsArray.push({ivarName:ivar_getName(signIvar)});
}
return methodsArray;
}

可以尝试改变视图的属性以及找出一些方法来运行