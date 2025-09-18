
class _MyHomePageState extends State<MyHomePage> {
 var opacity= 1.0;
 bool flag=true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Animated opacity

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(
                seconds: 1,
              ),
              curve: Curves.slowMiddle,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.green,
              ),
            ),

            ElevatedButton(
                onPressed: (){
                setState(() {
                  if(flag){
                  opacity=0.0;
                  flag=false;
                  }
                  else{
                    opacity=1.0;
                    flag=true;
                  }
                });
                },
                child: Text("Animate")
            )

          ],
        ),
      ),

    );
  }
}
