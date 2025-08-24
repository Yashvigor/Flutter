class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Expanded Widget (for maintaining ratio or for using widget for the whatever occupied space)

      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //       width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 4,
      //       child: Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.pink,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         height: 100,
      //         width: 50,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //           height: 100,
      //           width: 50,
      //           color: Colors.green,
      //         ),
      //     ),
      //
      //
      //   ],
      // ),

      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.yellow,
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),


        ],
      ),



    );
  }
}
