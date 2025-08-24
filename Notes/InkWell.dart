class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
   body: Center(
     child: InkWell (
       onTap: (){
         print('Tapped on container');
       },
       onDoubleTap: (){
         print('Double Tapped on container');
       },
       onLongPress: (){
         print('Long Pressed on Container');
       },
       child: Container(
         width: 200,
         height: 200,
         color: Colors.pink,
         child: Center(child:InkWell(
             onTap: (){
               print('Text Tapped');
             },

             child: Text('Clcik here',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w700),))) ,
       ),
     ),
   ),
    );

  }
}
