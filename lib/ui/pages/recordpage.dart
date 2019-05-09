// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:hamropasal/models/reservation_model.dart';
// import 'package:hamropasal/resources/db_provider.dart';
// import 'package:hamropasal/resources/fireStore_provider.dart';
// import 'package:hamropasal/resources/firebase_auth_provider.dart';
// import 'package:hamropasal/ui/pages/reservationform.dart';

// class RecordPage extends StatefulWidget {
//   @override
//   _RecordPageState createState() => _RecordPageState();
// }

// class _RecordPageState extends State<RecordPage> {
//   List items = [];

//   void initState() {
//     super.initState();
//   }

//   Future<List> getItems() async {
//     return DbProvider().fetchItems();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Record'),
//         backgroundColor: Colors.red,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: () {
//               FirebaseAuthProvider().logout();
//             },
//           )
//         ],
//       ),
//       body: StreamBuilder(
//         stream:FirestoreProvider().getItems(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if(!snapshot.hasData) return Center(child: CircularProgressIndicator(),);
//           if(snapshot.hasError) return Center(child: Text("There was an error ${snapshot.error}" ),);
//           QuerySnapshot items = snapshot.data;
//           List<DocumentSnapshot>documents=items.documents;

//           return ListView.builder(
//             physics: BouncingScrollPhysics(),
//             itemCount: documents.length,
//             itemBuilder: (BuildContext context, int index) {
//               ItemModel item = ItemModel.fromMap(documents[index]);
//               return Column(
//                 children: <Widget>[
//                   ListTile(
//                     onTap: () => Navigator.push(
//                         context, MaterialPageRoute(builder: (_) => FillForm())),
//                  isThreeLine: true,
//                  title: Text(item.fullname),
                 
//                   ),
//                   ListTile(
//                     onTap: () => Navigator.push(
//                         context, MaterialPageRoute(builder: (_) => FillForm())),
//                  isThreeLine: true,
//                  title: Text(item.email),
                 
//                   ),
//                   ListTile(
//                     onTap: () => Navigator.push(
//                         context, MaterialPageRoute(builder: (_) => FillForm())),
//                  isThreeLine: true,
//                  title: Text(item.number),
                 
//                   ),
//                   ListTile(
//                     onTap: () => Navigator.push(
//                         context, MaterialPageRoute(builder: (_) => FillForm())),
//                  isThreeLine: true,
//                  title: Text(item.contact),
                 
//                   )
//                 ],
//               );
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: ()=>Navigator.push(context, MaterialPageRoute(
//           builder: (_)=>FillForm()
//         )),
//       ),
//     );
//   }
// }
