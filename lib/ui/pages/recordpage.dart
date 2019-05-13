import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hamropasal/models/reservation_model.dart';
import 'package:hamropasal/resources/fireStore_provider.dart';
import 'package:hamropasal/resources/firebase_auth_provider.dart';
import 'package:hamropasal/ui/pages/DetailPage/hoteldetails.dart';
import 'package:hamropasal/ui/pages/reservationform.dart';
import './detail.dart';
import '../../resources/db_provider.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [];

  void initState() {
    super.initState();
    
  }

  Future<List> getItems() async {
    return DbProvider().fetchItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.home),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context)=>HotelDetailPage()
            )); },)
        ],
      ),
      body: StreamBuilder(
        stream:FirestoreProvider().getItems(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if(!snapshot.hasData) return Center(child: CircularProgressIndicator(),);
          if(snapshot.hasError) return Center(child: Text("There was an error ${snapshot.error}" ),);
          QuerySnapshot items = snapshot.data;
          List<DocumentSnapshot>documents=items.documents;

          return ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: documents.length,
            itemBuilder: (BuildContext context, int index) {
              ItemModel item = ItemModel.fromMap(documents[index]);
              return Column(
                children: <Widget>[
                  ListTile(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailPage(item: item, onDelete: _delete,))),
                    isThreeLine: true,
                    title: Text(item.fullname),
                    onLongPress: (){Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>AddPage(item: item,)
                    ));},
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      
                      onPressed: ()=>_delete(item),
                    ),
                   
                    
                  
                  ),
                  Divider(),
                   ListTile(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailPage(item: item, onDelete: _delete,))),
                    isThreeLine: true,
                    title: Text(item.id),
                    onLongPress: (){Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>AddPage(item: item,)
                    ));},
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      
                      onPressed: ()=>_delete(item),
                    ),
                   
                    
                  
                  ),
                  
                  // ),
                  // Divider(),
                ],
              );
            },
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.push(
      //       context, MaterialPageRoute(builder: (_) => AddPage())),
      //   tooltip: "Add Item",
      //   child: Icon(Icons.add),
      // ),
      backgroundColor: Colors.green[200],
    );
  }

  void _delete(ItemModel item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete item"),
          content: Text("Are you sure you want to delete Item?"),
          actions: <Widget>[
            FlatButton(
              child: Text("Cancel"),
              onPressed: ()=>Navigator.pop(context),
            ),
            FlatButton(
              child: Text("Delete"),
              onPressed:(){
                removeItem(item.id);
                FirestoreProvider().getItems();
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (_)=>HomePage()
                ));
              }
            )
          ],
        );
      }
    );
  }

 
  removeItem(id){
    FirestoreProvider().delete(id);
  }

}
