class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
         children: [
           Positioned(
             bottom: 41,
             right: 41,
             child: Container(
               width: 100,
               height: 100,
               color: Colors.white,
             ),
           )
         ],
        ),
      ),

     );

  }
}
