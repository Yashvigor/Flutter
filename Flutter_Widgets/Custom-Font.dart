class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object 
        // that was created by the App.build method, and use it 
        // to set our appbar title.
        title: Text('Hello'),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontFamily: 'FontMain', // FontMain is defined in pubspec.yaml
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
