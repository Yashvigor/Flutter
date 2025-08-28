import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'BMI Calculator'),
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
  var wtController= TextEditingController();
  var ftController= TextEditingController();
  var inController= TextEditingController();
  var result="";
  var bgColor=Colors.white;
  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
       body: Container(
         color: bgColor,
         child: Center(
           child: Container(
             width: 300,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('BMI', style: TextStyle(
                   fontSize: 34,
                   fontWeight: FontWeight.w700,
                 ),),
                 SizedBox(
                   height: 21,
                 ),
                 TextField(
                   controller: wtController,
                   decoration: InputDecoration(
                     label: Text(
                       'Enter your Weight in Kgs'
                     ),
                     prefixIcon: Icon(Icons.line_weight)
                   ),
                   keyboardType: TextInputType.number,
                 ),
                 SizedBox(
                   height: 11,
                 ),
                 TextField(
                   controller: ftController,
                   decoration: InputDecoration(
                       label: Text(
                           'Enter your Height in Feet'
                       ),
                       prefixIcon: Icon(Icons.height)
                   ),
                   keyboardType: TextInputType.number,
                 ),
                 SizedBox(
                   height: 11,
                 ),
                 TextField(
                   controller: inController,
                   decoration: InputDecoration(
                       label: Text(
                           'Enter your Height in Inches'
                       ),
                       prefixIcon: Icon(Icons.height)
                   ),
                   keyboardType: TextInputType.number,
                 ),
                 SizedBox(
                   height: 16,
                 ),
                 ElevatedButton(
                     onPressed: (){
                       var wt= wtController.text.toString();
                       var ft=ftController.text.toString();
                       var inch=inController.text.toString();

                       if(wt!="" && ft!="" && inch!=""){
                         // BMI Calculation
                         var iwt= int.parse(wt);
                         var ift= int.parse(ft);
                         var iInch= int.parse(inch);

                         var tInch= (ift*12)+iInch;
                         var tCm= tInch*2.54;
                         var tM= tCm/100;
                         var Msg;
                         var bmi= iwt/(tM*tM);
                         if(bmi>25){
                           Msg="You are OverWeight";
                           bgColor=Colors.orangeAccent.shade200;
                         }
                         else if(bmi<18){
                           Msg="You are UnderWeight";
                           bgColor= Colors.red.shade200;
                         }
                         else{
                          Msg="You are Healthy";
                          bgColor=Colors.green.shade200;
                         }
                         setState(() {
                           result="$Msg \n Your BMI is: ${bmi.toStringAsFixed(2)}";
                         });
                       }
                       else{
                         setState(() {
                           result="Please fill all the required details!";
                         });
                       }
                     },
                     child: Text('Calculate'),
                 ),
                 SizedBox(
                   height: 11,
                 ),
                 Text(result,style: TextStyle(
                   fontSize: 19
                 ),)

               ],
             ),
           ),
         ),
       ),
    );
  }
}
