class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var  arrNames= ['Yashvi','kalp','Mauli','Het','Dhwani','Khushi'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('${index+1}'),
              title: Text(arrNames[index]),
              subtitle: Text('Number'),
              trailing: Icon(Icons.add),
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context,index){
            return Divider(height: 4, thickness: 3,);
          },
        )

    );

  }
}
