class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

    //
    // body: Row(
    //   children: [
    //     Text("Hello",style: TextStyle(fontSize: 16,color: Colors.grey),),
    //     Text("World!", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold,color: Colors.blue ),),
    //   ],
    // ),

      // Richtext is used for similar case scenario

      body: Center(
        child: RichText(
            text:TextSpan(
              style: TextStyle(color: Colors.grey,fontSize: 16),
              children: <TextSpan>[
              TextSpan(text: "Hello "),
                TextSpan(text: "World! ", style: TextStyle(fontSize: 34,color: Colors.blue,fontWeight: FontWeight.bold
                )),
                TextSpan(
                  text: "Welcome to ",

                ),
                TextSpan(
                  text: "Flutter",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 43,
                      color: Colors.orange,
                      fontStyle: FontStyle.italic,
                  )
                )
              ]
            )

        ),
      ),

    );
  }
}
