import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {

var myc= new myclass();
myc.printName("Yashvi");
myc.printName("Gor");
int sum;
sum=myc.add(5,6);
print(sum);
sum=myc.add(8,10);
print(sum);

}
class myclass{

  myclass(){ // default constructor (Init block)
    print("Object created");
  }

  void printName(String name)//Declaration
  { //Definition
    print(name);
  }

  int add(int a,int b){
    return a+b;

    a=6; //Dead code(unreachable)
  }
}
