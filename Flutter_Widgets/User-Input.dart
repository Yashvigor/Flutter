class _MyHomePageState extends State<MyHomePage> {
  var emailText=TextEditingController();
  var passText= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),


      ),

      body: Center(child: Container(
        width: 300,
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.center ,
              children: [
                TextField(
                //  enabled: false,
                  keyboardType: TextInputType.phone,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        )

                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.purpleAccent,
                          width: 2,
                        )
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        )
                    ),
                    // suffixText: "username exists",
                    suffixIcon: IconButton(onPressed:(){
                     
                    }, icon: Icon(Icons.remove_red_eye),
                      color: Colors.yellow,
                  ),
                    prefixIcon:Icon(Icons.phone,color: Colors.yellow,),
                ),
                ),
                Container(
                  height: 11,

                ),
                TextField(

                  controller: passText,
                     obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )
                      )

                  ),

                ),
                ElevatedButton(onPressed: (){
                  String email=emailText.text.toString();
                  String pass=passText.text;

                  print("Email: $email, Pass: $pass");
                }, child: Container(
                    color: Colors.green,
                    child: Text("Login",style: TextStyle(color: Colors.black,backgroundColor: Colors.green, ),)))
              ],
            )
        ),
      )

    );
  }
}

