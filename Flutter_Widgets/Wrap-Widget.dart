
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 11,
            runSpacing: 11,
            alignment: WrapAlignment.spaceBetween,
           // alignment: WrapAlignment.center,
            children: [
              Container(
                width: 140,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 140,
                height: 200,
                color: Colors.pink,
              ),
              Container(
                width:140,
                height: 200,
                color: Colors.brown,
              ),
              Container(
                width: 140,
                height: 200,
                color: Colors.yellowAccent,
              ),
              Container(
                width: 140,
                height: 200,
                color: Colors.purple,
              ),
              Container(
                width:140,
                height: 200,
                color: Colors.orange,
              ),
              Container(
                width:140,
                height: 200,
                color: Colors.brown,
              ),
              Container(
                width:140,
                height: 200,
                color: Colors.pink,
              ),
              Container(
                width:140,
                height: 200,
                color: Colors.yellowAccent,
              ),
              Container(
                width:140,
                height: 200,
                color: Colors.green,
              ),
            ],
          ),
        ),

    );
  }
}
