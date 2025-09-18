import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {
//Maps: key value pair
// no restriction on type of data
// key needs to be unique

  // Defining Map (first way)
  // var map = {
  //   'key1': 'Value1',
  //   'key2': 2,
  //   'key3': 3.0,
  //   'key4': true
  // };
  //
  //  print(map['key2']); //prints value corresponds to key2 (2)
  //  // if the key5 is written and it is not defined so it prints null
  //
  // map['key1']= 'New Value';// override and now key1 is changed to New value

  // Defining Map (Second Way)
  var map= Map(); // Creating object of map
  map['Name']="Yashvi";
  map['Age']=12;

  print(map.isNotEmpty);
  print(map.length);
  print(map.keys);
  print(map.values);
  print(map.containsKey('Name'));
  print(map.containsValue(false));
  print(map.remove('Age')); // Removing key
  
}


