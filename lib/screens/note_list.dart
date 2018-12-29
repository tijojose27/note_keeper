import 'package:flutter/material.dart';

class NoteList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _NoteList();
  }

}

class _NoteList extends State<NoteList>{

  int count =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NOTES"),
      ),
      body: getNoteListView(),
    );
  }

  ListView getNoteListView(){
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text("Dummy title", style: titleStyle,),
            subtitle: Text("Dummy Date"),
            trailing: Icon(Icons.delete, color: Colors.grey,),
          ),
        )
      },
    );
  }

}