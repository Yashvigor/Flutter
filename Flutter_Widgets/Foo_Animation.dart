class _MyHomePageState extends State<MyHomePage> {
  var _width= 200.0;
  var _height=100.0;
  Decoration mydecor= BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey
  );
  bool flag=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Foo Animation

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
               width: _width,
              height: _height,
              decoration: mydecor,
              duration: Duration(
                seconds: 2,
              ),
              curve: Curves.slowMiddle,

            ),
            ElevatedButton(
                onPressed:(){
                 setState(() {
                   if(flag){
                     _width=100.0;
                     _height=200.0;
                     flag=false;
                     mydecor= BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: Colors.green
                     );
                   }
                   else{
                     _width=200.0;
                     _height=100.0;
                     flag=true;
                     mydecor=BoxDecoration(
                       borderRadius: BorderRadius.circular(2),
                       color: Colors.blueGrey
                     );
                   }
                 });
                },
                 child: Text('Animate'),
            ),
          ],
        ),
      ),

    );
  }
}
