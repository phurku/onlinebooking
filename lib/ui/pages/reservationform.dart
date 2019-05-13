import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hamropasal/models/reservation_model.dart';
import 'package:hamropasal/resources/fireStore_provider.dart';
import 'package:hamropasal/ui/pages/login.dart';
import 'package:hamropasal/ui/pages/recordpage.dart';
import 'package:image_picker/image_picker.dart';

class AddPage extends StatefulWidget {
  final ItemModel item;

  const AddPage({Key key, this.item}) : super(key: key);
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  GlobalKey<FormState> datakey = GlobalKey();
  TextEditingController _fullname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _entrydate = TextEditingController();
  TextEditingController _exitdate = TextEditingController();

  DateTime _dateInfo;
  DateTime _dateExit;
  String fullname;
  String email;
  String number;
  String contact;
  String entrydate;
  String exitdate;

  initState() {
    if (widget.item != null) {
      _fullname.text = widget.item.fullname;
      _email.text = widget.item.email;
      _number.text = widget.item.number;
      _contact.text = widget.item.contact;
      _entrydate.text = widget.item.entrydate;
      _exitdate.text = widget.item.exitdate;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Your Record"),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          )
        ],
      ),
      body: Form(
        key: datakey,
              child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            _buildNameField(),
            SizedBox(
              height: 20,
            ),
            _buildEmailField(),
            SizedBox(
              height: 20,
            ),
            _buildNumberField(),
            SizedBox(
              height: 10,
            ),
            _buildContactField(),
            SizedBox(
              height: 20,
            ),
            _buildEntrydateField(),
            SizedBox(
              height: 20,
            ),
            _buildExitdateField(),
            SizedBox(
              height: 20,
            ),
            _buildSaveButton(context)
          ],
        ),
      ),
    );
  }

  TextFormField _buildNameField() {
    return TextFormField(
      controller: _fullname,
      validator: (value) {
        if (value.isEmpty) return "Enter your Fullname";
      },
      onFieldSubmitted: (value) {
        fullname = value;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Fullname",
//prefixIcon: Icon(Icons.title)
      ),
    );
  }

  TextFormField _buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) return "Enter your email address";
      },
      onFieldSubmitted: (value) {
        email = value;
      },
      controller: _email,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Email",
      ),
    );
  }

  TextFormField _buildNumberField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      validator: (value) {
        if (value.isEmpty) return "Enter your contact number";
      },
      onFieldSubmitted: (value) {
        contact = value;
      },
      controller: _contact,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Contact number",
      ),
    );
  }

  TextFormField _buildContactField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      validator: (value) {
        if (value.isEmpty) return "Enter the no. of people staying";
      },
      onFieldSubmitted: (value) {
        number = value;
      },
      controller: _number,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Number of menbers staying",
      ),
    );
  }

  FlatButton _buildEntrydateField() {
    return FlatButton(
      child: new Row(
        children: <Widget>[
          new Text('${_dateInfo}'),
          new Icon(Icons.calendar_today),
        ],
      ),
      onPressed: () async {
        final dtpick = await showDatePicker(
            context: context,
            initialDate: new DateTime.now(),
            firstDate: new DateTime(2019),
            lastDate: new DateTime(2050));
        if (dtpick != null && dtpick != _dateInfo) {
          setState(() {
            _dateInfo = dtpick;
          });
        }
      },
    );
  }

  FlatButton _buildExitdateField() {
    return FlatButton(
      child: new Row(
        children: <Widget>[
          new Text('${_dateExit}'),
          new Icon(Icons.calendar_today)
        ],
      ),
      onPressed: () async {
        final dtpick = await showDatePicker(
            context: context,
            initialDate: new DateTime.now(),
            firstDate: new DateTime(2019),
            lastDate: new DateTime(2050));
        if (dtpick != null && dtpick != _dateExit) {
          setState(() {
            _dateExit = dtpick;
          });
        }
      },
    );
  }

  SizedBox _buildSaveButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 5.0,
      child: RaisedButton.icon(
        icon: Icon(Icons.save),
        label: Text("Submit"),
        color: Colors.blue,
        onPressed: ()async {
          if (_fullname == null ||
              _email == null ||
              _contact == null ||
              _number == null ||
              _entrydate == null ||
              _exitdate == null ) {
            return AddPage(); 
          }
        
          else{
            return AlertDialog();
          }
          Map<String, dynamic> item = {
            'fullname': _fullname.text,
            'email': _email.text,
            'number': _number.text,
            'contact': _contact.text,
            'entrydate': _entrydate.text,
            'exitdate': _exitdate.text,
          };
          if (widget.item != null) {
            await FirestoreProvider().updateItem(widget.item.id, item);
          } else {
            await FirestoreProvider().addItems(item);
          }
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => alertDialog()));
        },
      ),
    );
  }

  AlertDialog alertDialog() => AlertDialog(
        title: Text(
          'Successfully registered',
          style: TextStyle(color: Colors.green, fontSize: 20),
        ),
        content: Text('Thank you for using our service.'),
      );
  // Future submit()async{
  // if(_fullname==null && email==null && number==null && contact==null&&entrydate==null&&exitdate==null){
  //   return AlertDialog(
  //     title: Text('Successfully registered',style: TextStyle(color: Colors.green,fontSize: 20),),
  //     content: Text('Thank you for using our service.'),
  //   );
  // }
}
