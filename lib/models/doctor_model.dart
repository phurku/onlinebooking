import '../resources/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel {
  final String fullname;
  final String id;
  final String email;
  final String contact;
  final String number;

  final String date;

  ItemModel(
      {this.fullname,
      this.id,
      this.email,
      this.number,
      this.contact,
      this.date,
      });

  ItemModel.fromMap(DocumentSnapshot parsedJson)
      : id = parsedJson.documentID,
        fullname = parsedJson[columnfullname],
        email = parsedJson[columnemail],
        number = parsedJson[columnnumber],
        contact = parsedJson[columncontact],
       date = parsedJson[columndate];

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map[columnId] = id;
    map[columnfullname] = fullname;
    map[columnemail] = email;
    map[columnnumber] = number;
    map[columncontact] = contact;
    map[columndate]=date;
    return map;
  }
}
