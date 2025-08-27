
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // body: Center(
      //   child: SizedBox(
      //     width: 200,
      //     height: 34,
      //     child: ElevatedButton(
      //         onPressed: (){},
      //         child: Text('Click'),
      //     ),
      //   ),
      // ),

      // body: Center(
      //   child: SizedBox.expand(
      //      // takes maximum height and width automatically of the parent
      //     child: ElevatedButton(
      //       onPressed: (){},
      //       child: Text('Click'),
      //     ),
      //   ),
      // ),
      //
      // body: Center(
      //   child: SizedBox.shrink(
      //     child: ElevatedButton(
      //       onPressed: (){},
      //       child: Text('Click'),
      //     ),
      //   ),
      // ),


          body: Wrap(
            direction: Axis.vertical,
            children: [
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Click'),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Click'),

                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox.square(
                dimension: 100,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Click'),

                ),
              ),
            ],
          )



      // body: Center(
      //   child: ConstrainedBox(
      //     constraints: BoxConstraints(
      //       minWidth: 200,
      //       minHeight: 20,
      //       maxHeight: 60,
      //       maxWidth: 300,
      //     ),
      //       child: SizedBox.shrink(
      //         // When used expand takes parent's max width and height
      //         // when used shrink takes parent's min height and width
      //         child: ElevatedButton(
      //           onPressed: (){},
      //           child: Text('Click'),
      //         ),
      //       ),
      //
      //   ),
      // ),


      // body: Center(
      //   child: ConstrainedBox(
      //     constraints: BoxConstraints(
      //       minWidth: 200,
      //       minHeight: 20,
      //       maxHeight: 60,
      //       maxWidth: 300,
      //     ),
      //     child: SizedBox.expand(
      //       // When used expand takes parent's max width and height
      //       // when used shrink takes parent's min height and width
      //       child: ElevatedButton(
      //         onPressed: (){},
      //         child: Text('Click'),
      //       ),
      //     ),
      //
      //   ),
      // ),
    );
  }
}
