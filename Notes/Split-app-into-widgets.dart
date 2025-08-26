
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),


        body: Container(
          child: Column(
            children: [
            CatItems(),
              Contact(),
              SubCatItems(),
              BottomMenu(),

            ],
          ),
        
        ),
      );
  }
}

class CatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.pink,
        child: ListView.builder(itemBuilder: (context,index)=> Padding(
          padding: const EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,

        ),
      ),
    );

  }
}
class Contact extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.yellowAccent,
        child: ListView.builder(itemBuilder: (context,index)=> ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
          ),
          title: Text('Name'),
          subtitle: Text('Mob no'),
          trailing: Icon(Icons.delete),
        )),

      ),
    );
  }
}

class SubCatItems extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 200,
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              color: Colors.blue,
            ),
          ),
        ), itemCount: 10, scrollDirection: Axis.horizontal,),
      ),
    );
  }
}
class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.brown,
        child: GridView.count(crossAxisCount: 4,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blue,
                ),
              ),
            )
          ],

        ),
      ),
    );
  }
}
