class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Center(
        child: Container(
          width: 200 ,
          height: 100,
          color: Colors.pinkAccent,
          child: Center(child: Text('This is center',style: TextStyle(color: Colors.blue),)),
        ),
      ),
    );
  }
  
}
