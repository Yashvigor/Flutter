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
      return Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(arrNames[index],style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrNames[index],style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(arrNames[index],style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(arrNames[index],style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      ),
        ],
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
