
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
       body: ConstrainedBox(
         constraints: BoxConstraints(
           maxWidth: 300,
           maxHeight: 100,
           minWidth: 200,
         ),
         // child: Text(
         //   "Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World Hello World ",
         //   style: TextStyle(
         //     overflow: TextOverflow.fade,
         //     fontSize: 21,
         //
         //   ),
         // ),

         child: ElevatedButton(onPressed: (){}, child: Text('CLick')),
       )
    );
  }
}


