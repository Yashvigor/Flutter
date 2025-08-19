import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {

  // Loops

  for(int i=0;i<10;i++)//count specific loop
     {
    print("Hello");
  }

  int no=10;

  while(no>2){ //we don't know no of times the loop will execute
    print(no);
    no++;
  }

   do {
     print(no); //atleast once executed
   } while(no<50);

}


