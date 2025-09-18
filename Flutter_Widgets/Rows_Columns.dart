class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Column(
      //  children: [
      //    Text('A',style: TextStyle(fontSize: 25),),
      //    Text('B',style: TextStyle(fontSize: 25),),
      //    Text('C',style: TextStyle(fontSize: 25),),
      //    Text('D',style: TextStyle(fontSize: 25),),
      //  ], // For column based set of the texts
      // ), // Output ABCD Column
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             // mainAxisAlignment: MainAxisAlignment.spaceEvely,
            // crossAxisAlignment: CrossAxisAlignment.spaceAround,
             children:[
               Row(
                 children: [
                   Text('A',style: TextStyle(fontSize: 25),),
                   Text('B',style: TextStyle(fontSize: 25),),
                   Text('C',style: TextStyle(fontSize: 25),),
                   Text('D',style: TextStyle(fontSize: 25),),
                 ],
               ),

               ElevatedButton(onPressed:() {

               },child:Text('Click'))

             ], // For row based set of the texts
            ),
        ), 
    );
  }
}
