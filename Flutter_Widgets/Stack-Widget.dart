class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),

      // Stack widget

      // A widget that positions its children relative to the edges of its box.
      // This class is useful if you want to overlap several children in a simple way.
      // for example having some text and an image, overlaid with a gradient and a button
      // attached to a button.

      body: Container(
        // width: 300, // for overlay
        // height: 300,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              left: 21,
              top: 21,
              // bottom: 21,
              // right: 21,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      )

    );
  }
}
