class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

     var arrColors=[
       Colors.greenAccent,
       Colors.blue,
       Colors.pink,
       Colors.purpleAccent,
       Colors.brown,
       Colors.grey,
       Colors.teal,
       Colors.orange,
     ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

        // body: Column(
        //   children: [
        //     Container(
        //       height: 200 ,
        //       child: GridView.count(crossAxisCount: 4,
        //         crossAxisSpacing: 11,
        //       mainAxisSpacing: 11,
        //
        //       children: [
        //          Container(
        //             color: arrColors[0],
        //           ),
        //
        //         Container(
        //             color: arrColors[1],
        //           ),
        //         Container(
        //             color: arrColors[2],
        //           ),
        //         Container(
        //             color: arrColors[3],
        //           ),
        //         Container(
        //             color: arrColors[4],
        //           ),
        //         Container(
        //             color: arrColors[5],
        //           ),
        //         Container(
        //             color: arrColors[6],
        //           ),
        //         Container(
        //             color: arrColors[7],
        //           ),
        //       ],
        //       ),
        //     ),
        //     Container(
        //       height: 100,
        //     ),
        //
        //      Container(
        //        height: 200,
        //        child: GridView.extent(maxCrossAxisExtent: 100,
        //          crossAxisSpacing: 11,
        //          mainAxisSpacing: 11 ,
        //          children: [
        //            Container(
        //              color: arrColors[0],
        //            ),
        //
        //            Container(
        //              color: arrColors[1],
        //            ),
        //            Container(
        //              color: arrColors[2],
        //            ),
        //            Container(
        //              color: arrColors[3],
        //            ),
        //            Container(
        //              color: arrColors[4],
        //            ),
        //            Container(
        //              color: arrColors[5],
        //            ),
        //            Container(
        //              color: arrColors[6],
        //            ),
        //            Container(
        //              color: arrColors[7],
        //            ),
        //          ],),
        //      ),
        //   ],
        // ),
        //

       // body: GridView.builder(itemBuilder: (context,index) {
       //   return Container(color: arrColors[index]);
       // },itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       //   crossAxisCount: 3,
       //   crossAxisSpacing: 11,
       //   mainAxisSpacing: 11,
       // ))
       //
       //

        body: GridView.builder(itemBuilder: (context,index) {
          return Container(color: arrColors[index]);
        },itemCount: arrColors.length, gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 11,
          mainAxisSpacing: 11,
        ))





    );
  }
}

