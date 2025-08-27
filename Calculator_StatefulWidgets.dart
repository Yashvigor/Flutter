
class _MyHomePageState extends State<MyHomePage> {
  var no1controller= TextEditingController();
  var no2controller= TextEditingController();
  var result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),


body: Container(
  color: Colors.blue.shade200,
  child: Center(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          TextField(
            keyboardType: TextInputType.number,
         controller: no1controller,

          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: no2controller,
          ),
          Padding(
            padding: const EdgeInsets.all(21.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      var no1=int.parse(no1controller.text.toString());
                      var no2= int.parse(no2controller.text.toString());
                      var sum=no1+no2;
                       result= " The sum of $no1 and $no2 is $sum ";
                       setState(() {});
                      },
                    child: Text("Add"),
                ),
                ElevatedButton(
                  onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2= int.parse(no2controller.text.toString());
                    var sub=no1-no2;
                    result= " The sub of $no1 and $no2 is $sub ";
                    setState(() {});
                  },
                  child: Text("Sub"),
                ),
                ElevatedButton(
                  onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2= int.parse(no2controller.text.toString());
                    var mul=no1*no2;
                    result= " The multiplication of $no1 and $no2 is ${mul.toStringAsFixed(2)} ";
                    setState(() {});
                  },
                  child: Text("Mult"),
                ),
                ElevatedButton(
                  onPressed: (){
                    var no1=int.parse(no1controller.text.toString());
                    var no2= int.parse(no2controller.text.toString());
                    var div=no1/no2;
                    result= " The division of $no1 and $no2 is ${div.toStringAsFixed(2)} ";
                    setState(() {});
                  },
                  child: Text("Div"),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(21),
            child: Text(result,style: TextStyle(
                fontSize: 25,
              color: Colors.white,

            ),),
          
          ),
        ],
      ),
    ),
  ),
),
    );
  }
}
