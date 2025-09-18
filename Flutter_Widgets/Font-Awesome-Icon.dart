import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//pubspec.yaml
// name: myapp3
// description: "A new Flutter project."
// publish_to: 'none'

// version: 1.0.0+1

// environment:
//   sdk: ^3.8.1

// dependencies:
//   flutter:
//     sdk: flutter
//   font_awesome_flutter: ^10.1.0
//   intl: ^0.20.2

//   # The following adds the Cupertino Icons font to your application.
//   cupertino_icons: ^1.0.8

// dev_dependencies:
//   flutter_test:
//     sdk: flutter
//   flutter_lints: ^5.0.0

// flutter:
//   uses-material-design: true

//   assets:
//     - assets/images/



class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

    // Font Awesome Icon

     body: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
            Icon(Icons.add_card_rounded),
            SizedBox(
              width: 11,
            ),
            FaIcon(
                // FontAwesomeIcons.amazon,
              color: Colors.green,
                FontAwesomeIcons.googleDrive,

            ),
         ],
       ),
     ),


     );

  }
}
