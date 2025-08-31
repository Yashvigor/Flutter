
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late Animation _animation;
  late AnimationController _animationController;

  var listRadius = [150.0,200.0,250.0,300.0,350.0];

  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5 );
  //  _animation=Tween(begin: 0.0,end: 1.0).animate(_animationController);
    _animationController.addListener((){
      setState(() {
        
      });
    });
    _animationController.forward();


  }

  Widget buildMyContainer(radius){
    return Container(
      width: radius * _animationController.value,
      height: radius * _animationController.value,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.withOpacity(1.0 - _animationController.value)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

     // Ripple Effect Animation

     // body: Center(
     //   child: Stack(
     //     alignment: Alignment.center,
     //     children: listRadius.map((radius)=>
     //      Container(
     //        width: radius * _animationController.value,
     //        height: radius * _animationController.value,
     //        decoration: BoxDecoration(
     //          shape: BoxShape.circle,
     //          color: Colors.pink.withOpacity(1.0 - _animationController.value)
     //        ),
     //      )
     //     ).toList()
     //   ),
     // ),

      // for Icon

      body: Center(
        child: Stack(
            alignment: Alignment.center,
            children:[
              buildMyContainer(listRadius[0]),
              buildMyContainer(listRadius[1]),
              buildMyContainer(listRadius[2]),
              buildMyContainer(listRadius[3]),
              buildMyContainer(listRadius[4]),
              Icon(Icons.add_call,color: Colors.white,size: 34,)
        ]
        ),
      ),

    );
  }
}
