class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

     body: Center(
       child: ClipRRect(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(71), topRight: Radius.circular(21), bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21)),
         child: Image.asset('assets/images/nature.png',
           height: 200,
           width: 400,
           fit: BoxFit.fill,
         ),
       ),
     ),

    );
  }
}
