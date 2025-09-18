import 'package:intl/intl.dart';

// pubspec.yaml

// dev_dependencies:
//   flutter_test:
//     sdk: flutter
//   flutter_lints: ^5.0.0
//   intl: ^0.20.2
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var time= DateTime.now(); // gives current time
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),


      ),

    body: Center(
      child: Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         // Text("Current Time: ${DateFormat('Hms').format(time)}",style: TextStyle(fontSize: 21), ),
            Text("Current Time: ${DateFormat('MMMMEEEEd').format(time)}",style: TextStyle(fontSize: 21), ),


            ElevatedButton(
                onPressed:(){
                  setState(() {

                  });
                } ,
                child: Text('Current Time')
            )
          ],
        ),
      ),
    ),


    );
  }
}

