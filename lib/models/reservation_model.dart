// import '../resources/constants.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class ItemModel {
  String fullname;
  String key;
  String email;
  String number;
  String contact;
//   //  final String entrydate;
//   //  final String exitdate;
  ItemModel({
    this.fullname,
    this.key,
    this.email,
    this.number,
    this.contact,
  });
  ItemModel.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.value['key'],
        fullname = snapshot.value['fullname'],
        email = snapshot.value['email'],
        number = snapshot.value['number'],
        contact = snapshot.value['contact'];

  toJson() {
    return {
      'fullname': fullname,
      'email': email,
      'number': number,
      'contact': contact,
    };
  }

//     // this.entrydate,
//     // this.exitdate
//   });

//   ItemModel.fromMap(Map<String, dynamic> parsedJson) :
//         id = parsedJson[columnId],
//         fullname = parsedJson[columnfullname],
//         email = parsedJson[columnemail],
//         number = parsedJson[columnnumber],
//         contact = parsedJson[columncontact];
//        // entry= parsedJson[columnentry];
//        // exit=parsedJson[columnexit];
//   Map<String, dynamic> toMap(){
//     var map = Map<String, dynamic>();
//     map[columnId] = id;
//     map[columnfullname] = fullname;
//     map[columnemail] = email;
//     map[columnnumber] = number;
//     map[columncontact]=contact;
//     // map[columnentry]=entrydate;
//     // map[columnexit]=exitdate;
//     return map;
//   }

// }

}
