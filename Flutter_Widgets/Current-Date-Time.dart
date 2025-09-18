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
            Text('Current Time: ${time}',style: TextStyle(fontSize:21 ),),
           // Text('Current Time: ${time.hour} ${time.minute} ${time.second} ',style: TextStyle(fontSize:21 ),),
           // Text('Current Time: ${time.second}',style: TextStyle(fontSize:21 ),),
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

