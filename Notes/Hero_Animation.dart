
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

   // Hero Animation
      // The transition effect of hero animation needs same tag for both the pages
      body: Container(
        child: Center(
          child: InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                  builder:(context)=> DetailPage()
              ));
            },
            child: Hero(
              tag: 'nature',
              child: Image.asset('assets/images/nature.png',
                width: 150,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
