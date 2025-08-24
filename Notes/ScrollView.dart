class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.pink ,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.blue ,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                  
                        color: Colors.orange ,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.green ,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.pink ,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.deepPurple ,
                  
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height: 200,
                        width: 200,
                        color: Colors.brown ,
                  
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.yellow,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.brown ,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blue ,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.black ,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.orange ,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.purpleAccent,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.lightGreen,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blue ,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.greenAccent ,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.blueGrey,
          
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.yellow,
          
              ),
          
            ],
          ),
        ),
      ),
    );

  }
}
