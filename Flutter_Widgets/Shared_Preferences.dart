
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  var nameController= TextEditingController();
  static const String KEYNAME= "name";
  var nameValue="No value saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

  void getValue() async {

    var prefs= await SharedPreferences.getInstance();
    var getName= prefs.getString(KEYNAME);
   // nameValue=getName!=null ? getName :  "No value saved";

      setState(() {
        nameValue= getName ?? "No Value Saved";
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

       body: Container(
         child: Center(
           child: SizedBox(
             width: 300,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextField(
                   controller: nameController,
                   decoration: InputDecoration(
                     label: Text('Name'),
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(21)
                     )
                   ),
                 ),
                 SizedBox(
                   height: 11,
                 ),
                 ElevatedButton(
                     onPressed: () async{
                        // var name= nameController.text.toString();
                        var prefs= await SharedPreferences.getInstance();
                        prefs.setString(KEYNAME, nameController.text.toString());

                     },
                     child: Text('Save') 
                 ),
                 SizedBox(
                   height: 11,
                 ),
                 Text(nameValue)
               ],
             ),
           ),
         ),
       ),


    );
  }
}
