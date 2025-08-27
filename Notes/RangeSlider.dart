class _MyHomePageState extends State<MyHomePage> {
  RangeValues values= RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {

    RangeLabels labels= RangeLabels(values.start.toString(),values.end.toString());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: RangeSlider(
            values: values,
            labels: labels,
            divisions: 20,
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade100,
            max: 100,
            min: 0,
            onChanged: (newValue){
           values= newValue;
           print('${newValue.start}, ${newValue.end}');
           setState(() {});
            },
        ),
      ),
      

    );
  }



}
