import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {
  // variable name: identifier of a particular value
  // Datatype: Type of value that variable has stored

  //Declaration of a variable
  int a; //initially it points null
  //print(a) //Gives error as it's null

 // int? a; //Nullable (can be null)
 // print(a); //no error

  //Assign

  a=5; // Initialization(first time assigned)
  print(a);
  a=7; // Reassigning a
  print(a);

  BigInt b;
  b= BigInt.parse('5689568949888964894984');
  print(b);

  double per=90.5;
  // num per=90.5 (used for both int and double type)
  
  bool islogin= false;
  islogin=true;

  // Inline Declaration
  String name= "Yashvi";
  name="Gor";

}

