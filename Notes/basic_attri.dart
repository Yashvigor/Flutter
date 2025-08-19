class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.lightBlue,
          child: Text("Hello"),
        ),
      )
    );
  }
}
