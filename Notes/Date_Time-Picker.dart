class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now(); // gives current time
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centers nicely
          children: [
            Text(
              "Select Date",
              style: TextStyle(fontSize: 21),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2021),
                  lastDate: DateTime(2026),
                );
                if (datePicked != null) {
                  print(
                      'Date selected: ${datePicked.day} ${datePicked.month} ${datePicked.year}');
                }
              },
              child: Text('Show'),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timePicked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial
                   // initialEntryMode: TimePickerEntryMode.input
                );
                if(timePicked!=null){
                  print('Time Selected: ${timePicked.hour}: ${timePicked.minute}');
                }
              },
              child: Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
