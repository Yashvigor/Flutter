class _MyHomePageState extends State<MyHomePage> {

  var arrIndex =[
    1,2,3,4,5,6,7,8,9,10,11
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

     body: Center(
       child: ListWheelScrollView(
           itemExtent: 200,
           children: arrIndex.map((e) =>
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                     child: Container(
                       child: Center(
                         child: Text('$e',style: TextStyle(
                           fontSize: 21,
                           color: Colors.white
                         ),),
                       ),
                       decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.circular(21),
                       ),
                     width: double.infinity,

                   ),
                 )).toList(),

       ),
     ),

    );
  }
}
