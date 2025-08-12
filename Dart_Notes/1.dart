import 'dart:io';
void main(){
  print('Welcome to Dart');
  stdout.write('hello\n');
  var name=stdin.readLineSync();
  print("Welcome, $name");
}
