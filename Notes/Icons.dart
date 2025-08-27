class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

        body: Center(
            child: Icon(Icons.access_alarms_rounded,
              size: 50,
              color: Colors.green,
            ),

        ),


    );
  }
}
