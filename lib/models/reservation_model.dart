import '../resources/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel {
  final String fullname;
  final String id;
  final String email;
  final String contact;
  final String number;

  final String entrydate;
  final String exitdate;

  ItemModel(
      {this.fullname,
      this.id,
      this.email,
      this.number,
      this.contact,
      this.entrydate,
      this.exitdate});

  ItemModel.fromMap(DocumentSnapshot parsedJson)
      : id = parsedJson.documentID,
        fullname = parsedJson[columnfullname],
        email = parsedJson[columnemail],
        number = parsedJson[columnnumber],
        contact = parsedJson[columncontact],
        entrydate = parsedJson[columnentrydate],
        exitdate = parsedJson[columnexitdate];

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map[columnId] = id;
    map[columnfullname] = fullname;
    map[columnemail] = email;
    map[columnnumber] = number;
    map[columncontact] = contact;
    map[columnentrydate] = entrydate;
    map[columnexitdate] = exitdate;

    return map;
  }
}
