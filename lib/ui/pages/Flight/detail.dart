import 'package:flutter/material.dart';
import 'package:hamropasal/models/flight_model.dart';


class DetailPage extends StatelessWidget {
  final ItemModel item;
  final Function onDelete;
  const DetailPage({Key key, this.item, this.onDelete}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(item.fullname),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.delete),
          onPressed: ()=>onDelete(item),)
        ],
        
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Text(item.fullname, style: Theme.of(context).textTheme.display1,),
            SizedBox(height: 20.0,),
            Text(item.email),
            SizedBox(height: 20.0,),
            Text(item.number),
            SizedBox(height: 20.0,),
            Text(item.contact),
            SizedBox(height: 20.0,),
            Text(item.number),
            SizedBox(height: 20.0,),
            
            Text(item.source),
            SizedBox(height: 20.0,),
            Text(item.destination),
            SizedBox(height: 20.0,),
          ],
        ),
      ),
    ); 
  }
  
}