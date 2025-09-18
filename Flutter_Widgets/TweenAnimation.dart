
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

    late Animation animation; // can be initialised later
    late AnimationController animationController;
    late Animation colorAnimation;

    @override
  void initState() {
    super.initState();
    animationController= AnimationController(vsync:this, duration: Duration(seconds: 5) );
    animation= Tween(begin: 200.0, end: 0.0).animate(animationController);
    colorAnimation= ColorTween(
      begin: Colors.blue,
      end: Colors.pink
    ).animate(animationController);
    animationController.addListener((){
       setState(() {
         
       });
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Tween Animation

      body: Center(
        child: Container(
          width: animation.value ,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),


    );
  }
}
