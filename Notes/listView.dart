class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

    body: ListView(
      scrollDirection: Axis.horizontal, // by default: vertical
       reverse: true, // by  default: false
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('One',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Two',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Three',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Four',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Five',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Six',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Seven',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Eight',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Nine',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
        ),
      ],
    ),

    );

  }
}
