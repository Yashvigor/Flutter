import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {

  final name= "Yashvi"; // Cannot be Reassigned
  // name= "kalp"; // Error

  // final age;
  // age= 12; //possible to intialise after declaration once

  // const age; // error
  // age=12; // necessary to initialize with declaration
  // also cannot reinitialize

  const  age=12; //works

  final names=[
    "Yashvi",
    "Kalp"
  ];

  // names=[1,2,3,4,"Mauli"]; //Error

 names.add("Mauli"); // Adding,removing is possible

  // In Final we can add,remove, make changes in compile time but cannot reinitialize the whole
  // In Const we cannot even make changes in compile time and cannot override as it is or add,remove element
  
}


