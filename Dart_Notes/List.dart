import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {
   // List

  // Declaration of List
  var listNames= [10,20,30,40];
  listNames.add(50); // adding 50 in index 4
  print("$listNames");
  var names= [];
  names.addAll(listNames); // adding a list elements from other existing list
  print("$names");
  names.add("Yashvi");
  names.add("Gor");
  // names.addAll(listNames); add list at last
  //inserting data

  names.insert(2,100); // inserting 100 at index 2
  names.insertAll(3, listNames);
  // adds list at index 3 and other remaining content of names appear after that
  // names[1]="kalp";

  // Replace
  // listNames.replaceRange(0, 4, [1,2,3,4]);
  // 1 2 3 4 50

  //Remove last
  // listNames.removeLast();
  // 10 20 30 40 (50 is removed)

  //Remove at with index
  // listNames.removeAt(1);
  // 10 30 40 50
  // listNames.removeAt(1);
  // 10 40 50

  //Remove Range
  //listNames.removeRange(0, 5);
  // Now list becomes empty [](blank)

   print("Length: ${listNames.length}");
   print("Reversed: ${listNames.reversed}");
   print("First: ${listNames.first}");
   print("Last: ${listNames.last}");
   print("Is Empty: ${listNames.isEmpty}");
   print("Is Not  Empty: ${listNames.isNotEmpty}");
   print("Element At Index: ${listNames.elementAt(2)}");




}


