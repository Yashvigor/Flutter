
class _MyHomePageState extends State<MyHomePage> {

  callBack(){
    print("Clicked");
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),


     body: ElevatedButton(
      child: Text("Click Me"),
       onPressed: callBack,
     ),


    );
  }
}
