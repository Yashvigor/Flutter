import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {
  String name ="Yashvi";

  //var
  var subject= "Maths";
  // subject= 7; it identifies the type string and cannot a=reassign with another datatype
  subject ="English"; //No error

  dynamic section ; // (Dynamic type) when not declared initially we can have any type of value in lifetime
  section= "d"; //Runtime changes of type are of no issue
  section= false;
  section= 7;


}

