class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Adding Decoration to container

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              // borderRadius: BorderRadius.circular(11),
              // borderRadius: BorderRadius.only(topLeft: Radius.elliptical(10,20)
              //  borderRadius: BorderRadius.only(topLeft: Radius.circular(21))
              
             // borderRadius: BorderRadius.all(Radius.circular(21)),
                border: Border.all(
                width: 2,
              color: Colors.grey
            ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 21,
                 // spreadRadius: 11,
                  color: Colors.pink,


                )
              ],
              shape: BoxShape.circle
            
            ),
          ),
        ),
      ),




    );
  }
}
