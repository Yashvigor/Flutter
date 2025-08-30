
class _MyHomePageState extends State<MyHomePage> {

  bool isFirst=true;
  // @override
  // void initState() {
  //   super.initState();
  //
  // //   Timer(
  // //     Duration(seconds: 4), () {
  // //        reload();
  // //   }
  // //   );
  // }
  void reload(){
    setState(() {
      if(isFirst) {
        isFirst = false;
      }
      else{
        isFirst=true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Cross Fade Widget

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 4),
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.grey.shade400,
              ),
               secondChild: Image.asset('assets/images/nature.png',
               width: 200,
               height: 200,
               ),
             // sizeCurve: Curves.fastOutSlowIn ,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
              crossFadeState: isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            ElevatedButton(
                onPressed: () {
               reload(); },
                child: Text('CrossFade'))
          ],
        ),
      )


    );
  }
}
