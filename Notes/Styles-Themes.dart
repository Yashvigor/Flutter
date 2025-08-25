class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // headlineLarge (21, w300)
          Text(
            'Hellooo Universe! (headlineLarge)',
            style: Theme.of(context).textTheme.headlineLarge,
          ),

          // titleMedium (15, w100, italic)
          Text(
            'Hellooo Universe! (titleMedium)',
            style: Theme.of(context).textTheme.titleMedium,
          ),

          // If you want to mix theme + override color
          Text(
            'Hellooo Universe! (custom color)',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
