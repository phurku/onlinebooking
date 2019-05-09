import 'package:flutter/material.dart';
import 'package:hamropasal/main.dart';
//import 'package:hamropasal/models/reservaodel.dart';
import 'package:hamropasal/models/reservation_model.dart';
import 'package:hamropasal/ui/pages/DetailPage/hoteldetails.dart';
import 'package:hamropasal/ui/pages/recordpage.dart';
import '../../resources/db_provider.dart';
import '../../resources/fireStore_provider.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../models/reservation_model.dart';


class FillForm extends StatefulWidget {
  final ItemModel item;

  const FillForm({Key key, this.item}) : super(key: key);
  @override
  _FillFormState createState() => _FillFormState();
}

class _FillFormState extends State<FillForm> {
  List<ItemModel> items=List();
  ItemModel item;
  DatabaseReference itemRef;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override


  void initState(){
    super.initState();
    item=ItemModel();
    final FirebaseDatabase database= FirebaseDatabase(app:app);
    itemRef=database.reference().child("items");
   itemRef.onChildAdded.listen(_onEntryAdded);
   itemRef.onChildChanged.listen(_onEntryChange);
    
    
    }

_onEntryAdded( Event event){
  setState(() {
   items.add(ItemModel.fromSnapshot(event.snapshot)); 
  });
}
_onEntryChange(Event event){
  var old=items.singleWhere((entry){
    return entry.key==event.snapshot.key;
  });
  setState(() {
   items[items.indexOf(old)]=ItemModel.fromSnapshot(event.snapshot); 
  });
}

   void handleSubmit()
    {
   final FormState form= formKey.currentState;
   if(form.validate()){
     form.save();
     form.reset();
     itemRef.push().set(item.toJson());
   }
   
  }
  String fullname;
  String email;
  String number;
  String contact;
  String entry;
  String exit;
  // TextEditingController _fullnamec = TextEditingController();
  // TextEditingController _emailc = TextEditingController();
  // TextEditingController _numc = TextEditingController();
  // TextEditingController _contactc = TextEditingController();
  // TextEditingController _entrydate = TextEditingController();
  // TextEditingController _exitdate = TextEditingController();

  // initState() {
  //   if (widget.item != null) {
  //     _fullnamec.text = widget.item.fullname;
  //     _emailc.text = widget.item.email;
  //     _numc.text = widget.item.number;
  //     _contactc.text = widget.item.contact;
  //     // _entrydate.text = widget.item.entry;
  //     // _exitdate.text = widget.item.exit;
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fill the form for reservation'),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () {
            
            },
          )
        ],),
body: Column(
  children: <Widget>[
    Flexible(
      flex: 0,
      child: Center(
        child: Form(
          key: formKey,
          child: Flex(
            direction: Axis.vertical,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                initialValue: "",
                onSaved: (value)=>item.fullname=value,
                validator: (value)=>value=="" ?value:null,
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your fullname'
                ),
                ),
              ),
              SizedBox(height: 10,),
               ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(keyboardType: TextInputType.emailAddress,
                initialValue: "",
                                onSaved: (value)=>item.email=value,
 validator: (value)=>value=="" ?value:null,
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your Email Address'
                ),
                ),
              ),
              SizedBox(height: 10,),
               ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                initialValue: "",
                                onSaved: (value)=>item.number=value,
 validator: (value)=>value=="" ?value:null,
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter the number of person staying.'
                ),
                ),
              ),
              SizedBox(height: 10,),
               ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                initialValue: "",
                                onSaved: (value)=>item.contact=value,
 validator: (value)=>value=="" ?value:null,
                decoration:InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your contact number'
                ),
                ),
              ),
              SizedBox(height: 10,),
              RaisedButton(
                onPressed: (){},
                child: Text('Submit'),
                
              )
            ],
          ),
          
        ),
      ),
    )
  ],
),


      );
//       body: ListView(padding: EdgeInsets.all(10), children: <Widget>[
//         SizedBox(
//           height: 30,
//         ),
//         _buildnameField(),
//         SizedBox(
//           height: 20,
//         ),
//         _buildemailField(),
//         SizedBox(
//           height: 20,
//         ),
//         _buildnumberField(),
//         SizedBox(
//           height: 20,
//         ),
//         _buildcontactField(),
//         SizedBox(
//           height: 20,
//         ),
//         _buildsaveField(),
//         SizedBox(
//           height: 20,
//         ),
//         // 5
//       ]),
//     );
//   }

//   submit(BuildContext context) {
//     var alertDialog = AlertDialog(
//       title: Text('Registered Successfully'),
//       content: Text('Thanku!! '),
//     );
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return alertDialog;
//         });
//   }

//   void alert(BuildContext context) {
//     var alertDialog = AlertDialog(
//       title: Text('fill completely',
//           style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
//       content: Text(
//         'Thanku for using our service',
//         style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//       ),
//     );
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return alertDialog;
//         });
//   }

//   TextField _buildnameField() {
//     return TextField(
//       controller: _fullnamec,
//       decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: "Enter your full name.",
//           icon: Icon(Icons.person_pin_circle)),
//     );
//   }

//   TextField _buildemailField() {
//     return TextField(
//       controller: _emailc,
//       decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: "Enter your Email Address",
//           icon: Icon(Icons.person)),
//     );
//   }

//   TextField _buildnumberField() {
//     return TextField(
//       controller: _numc,
//       decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: "Number of people staying.",
//           icon: Icon(Icons.people)),
//     );
//   }

//   // TextField _buildentrydateField() {
//   //   return TextField(
//   //     controller: _entrydate,
//   //     decoration: InputDecoration(
//   //         border: OutlineInputBorder(),
//   //         hintText: "Entry Date",
//   //         icon: Icon(Icons.date_range)),
//   //   );
//   // }

//   // TextField _buildexitdateField() {
//   //   return TextField(
//   //     controller: _exitdate,
//   //     decoration: InputDecoration(
//   //         border: OutlineInputBorder(),
//   //         hintText: "Exit Date",
//   //         icon: Icon(Icons.date_range)),
//   //   );
//   // }

//   TextField _buildcontactField() {
//     var contactc;
//     return TextField(
//       controller: contactc,
//       decoration: InputDecoration(
//           border: OutlineInputBorder(),
//           hintText: "Enter your Contact number.",
//           icon: Icon(Icons.contact_phone)),
//     );
//   }

//   void reserve(BuildContext context) {
//     var alertDialog = AlertDialog(
//       title: Text('Do want to cancel reservation?'),
//       actions: <Widget>[
//         FlatButton(
//           child: Text('Yes'),
//           onPressed: () {
//             Navigator.pushReplacement(context,
//                 MaterialPageRoute(builder: (context) => HotelDetailPage()));
//           },
//         ),
//         FlatButton(
//           child: Text('No'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         )
//       ],
//     );
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return alertDialog;
//         });
//   }

//   _buildsaveField() {
//     return SizedBox(
//       child: RaisedButton.icon(
//         icon: Icon(Icons.save),
//         label: Text('Submit'),
//         color: Colors.blue,
      
//       onPressed: ()async {
// if(_fullnamec==null||_contactc==null||_emailc==null||_numc==null){
//   return;
// }
  
// Map<String ,dynamic>item={
//              'fullname':_fullnamec.text,
//   'email':_emailc.text,
//   'number':_numc.text,
//   'contact':_contactc.text 
//             };
//             if(widget.item!=null){
//               await FirestoreProvider().updateItem(widget.item.id,item);
//             }else{
//              await FirestoreProvider().addItems(item);
//             }
//               Navigator.pop(context);
//             },
//     ));
//   }
// }


  }}