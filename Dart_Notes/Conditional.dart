import 'dart:io';
import 'package:flutter/cupertino.dart';
void main() {

  // Conditional Programming
   var a=200;
   if(a>200){
     // When condn 1 is true
   }
   else if(a>50){
     // When condn 2 is true
   }
   else{
     // When no condition are true
   }

   // Nested
   var b= 20;
  if(a>200){
    // when condn 1 is true
    if(b>300){
      //when both condn is true
    }
  }
  // Similar way
  if(a>200 && b>300) {
    // when both condn are true
  }

  if(a>200 || b<300){
    // When any one or both are true
  }
  

}


