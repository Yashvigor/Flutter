// splashscreen.dart
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Dashboard.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=> DashBoardScreen(),
          ));
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text('Classico',style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
// dashboard.dart
import 'package:flutter/material.dart';
import 'package:my_app1/profiilescreen.dart';
import 'main.dart';


class DashBoardScreen extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('DashBoard Screen',style: TextStyle(fontSize: 25),),
                SizedBox(height: 11,),
                TextField(
                  controller:nameController ,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>ProfileScreen(nameController.text.toString()))
                  );
                }, child: Text('Click here'),)
              ],
            ),

        ),
      ),
    );
  }
}
// profilescreen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{

  var nameFromHome;

  ProfileScreen(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("My Profile"),
     ),
     body: Container(
       color: Colors.blueGrey.shade200,
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("Welcome $nameFromHome",style: TextStyle(
               fontSize: 34,
               color: Colors.blue
             ),),
             ElevatedButton(
                 onPressed: (){
                   Navigator.pop(context);
                 },
                 child: Text('Back'),
             ),
           ],
         ),
       ),
     ),
   );
  }
}
// main.dart

import 'package:flutter/material.dart';
import 'package:my_app1/IntroPage.dart';
import 'package:my_app1/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      

    );
  }



}



