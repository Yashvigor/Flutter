class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),


          // body: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text('Hello World', style: TextStyle(fontSize: 25,color: Colors.white),),
          // ),


      body: Container(
             color: Colors.yellow,
             margin: EdgeInsets.all(11),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Hello World', style: TextStyle(fontSize: 25,color: Colors.white),),
             )),

    );
  }
}
