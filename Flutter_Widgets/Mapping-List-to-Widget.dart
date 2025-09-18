
class _MyHomePageState extends State<MyHomePage> {

    var arrData= [
      // 'Yashvi',
      // 'Kalp',
      // 'Sandip',
      // 'Sweta',
      // 'Mauli',
      // 'Pari',
      // 'Leeza',
      // 'Twisha',
      // 'Neha'

      {
        'name': 'Yashvi',
        'mobno' : '9999999999',
        'unread': '2'
      },
      {
        'name': 'kalp',
        'mobno' : '9999999999',
        'unread': '3'
      },
      {
        'name': 'Sandip',
        'mobno' : '9999999999',
        'unread': '4'
      },
      {
        'name': 'Sweta',
        'mobno' : '9999999999',
        'unread': '5'
      },
      {
        'name': 'Mauli',
        'mobno' : '9999999999',
        'unread': '6'
      },
      {
        'name': 'Pari',
        'mobno' : '9999999999',
        'unread': '7'
      },
      {
        'name': 'Leeza',
        'mobno' : '9999999999',
        'unread': '2'
      },
      {
        'name': 'Twisha',
        'mobno' : '9999999999',
        'unread': '9'
      },
      {
        'name': 'Neha',
        'mobno' : '9999999999',
        'unread': '10'
      },
      {
        'name': 'Yashvi',
        'mobno' : '9999999999',
        'unread': '2'
      },

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

     body: Container(
       child: ListView(
         children:arrData.map((value){
            return  ListTile(
               leading: Icon(Icons.account_circle),
              title: Text(value['name'].toString()),
              subtitle: Text(value['mobno'].toString()),
              trailing: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.green,
                  child: Text(value['unread'].toString())),
             );
           }).toList()
    ),
       ),
    );
  }
}
