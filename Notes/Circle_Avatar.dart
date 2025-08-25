class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var  arrNames= ['Yashvi','kalp','Mauli','Het','Dhwani','Khushi'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),


         body: Center(
           child: CircleAvatar(
             // backgroundImage: AssetImage('assets/images/background.jpg'),
             // backgroundColor: Colors.pink,
             // radius: 100,
             // minRadius: 50,
             child: Container(
               height: 50,
               width: 50,
               child: Column(
                 children: [
                   Container(
                       height: 30,
               width: 30,
               child: Image.asset('assets/images/background.jpg')),
                   Text('Hey,Me'),
                 ],
               
               ),
             ),
             maxRadius: 50,

           ),
         )
       );


  }
}
