import 'package:databaseapp/data/local/db_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage>{

  List<Map<String,dynamic>> allNotes = [];
  DBhelper? dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = DBhelper.getInstance;
    getNotes(); // to call this function when page is loaded
  }

  void getNotes() async{
    allNotes = await dbRef!.getAllNotes();
    print("Fetched notes: $allNotes");
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      // all notes viewed here
      body: allNotes.isNotEmpty ? ListView.builder(
          itemCount: allNotes.length,

          itemBuilder:(_, index) {
            return ListTile(
              leading: Text('${allNotes[index][DBhelper.COLUMN_NOTE_SNO]}'),
              title: Text(allNotes[index][DBhelper.COLUMN_NOTE_TITLE]),
              subtitle: Text(allNotes[index][DBhelper.COLUMN_NOTE_DESC]),
            );
          }
          ) : Center(
        child: Text('No notes yet!'),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: () async{
            // note to be added from here
            bool check= await dbRef!.addNote(mTitle: "Personal Fav Note", mDesc: "DO what you love or Love what you do!!");
            if(check){
              getNotes();
            }
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
