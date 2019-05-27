import 'package:flutter/material.dart';
import 'package:hamropasal/models/flight_model.dart';
import 'package:hamropasal/resources/fireStore_provider.dart';
import 'package:hamropasal/ui/pages/Flight/airdetail.dart';

class BookingPage extends StatefulWidget {
  final ItemModel item;

  const BookingPage({Key key, this.item}) : super(key: key);
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  GlobalKey<FormState> _formkey = GlobalKey();
  TextEditingController _fullname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _source = TextEditingController();
  TextEditingController _destination = TextEditingController();

  String selectType;
  String selectType1;
  DateTime _dateInfo;
  String fullname;
  String email;
  String number;
  String contact;
  String date;
  String source;
  String destination;
  initState() {
    if (widget.item != null) {
      _fullname.text = widget.item.fullname;
      _email.text = widget.item.email;
      _number.text = widget.item.number;
      _contact.text = widget.item.contact;
      _date.text = widget.item.date;
      _source.text = widget.item.source;
      _destination.text = widget.item.destination;
    }
    super.initState();
  }

  List<String> _accountType = <String>[
    'Kathmandu',
    'Biratnagar',
    'Tumlingtar',
    'Pokhara',
    'Lumbini',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Fill the form "),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AirDetailPage()));
            },
          )
        ],
      ),
      body: Form(
        key: _formkey,
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
            SizedBox(
              height: 10,
            ),
            _buildContactField(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.flight_takeoff,
                  color: Colors.red,
                  size: 25,
                ),
                DropdownButton(
                    items: _accountType
                        .map(
                          (value) => DropdownMenuItem(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                                value: value,
                              ),
                        )
                        .toList(),
                    onChanged: (selectAccountType) {
                      setState(() {
                        selectType = selectAccountType;
                      });
                    },
                    value: selectType,
                    hint: Text('Select your location for take-off',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.flight_land,
                  color: Colors.green,
                  size: 25,
                ),
                DropdownButton(
                    items: _accountType
                        .map(
                          (value1) => DropdownMenuItem(
                                child: Text(
                                  value1,
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                value: value1,
                              ),
                        )
                        .toList(),
                    onChanged: (selectAccountType1) {
                      setState(() {
                        selectType1 = selectAccountType1;
                      });
                    },
                    value: selectType1,
                    hint: Text('Select your Destination',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            _buildEntrydateField(),
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
        icon: Icon(Icons.person),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        labelText: 'Enter your fullname',
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
        icon: Icon(Icons.email),
        labelText: 'Enter your email address',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Email",
      ),
    );
  }

  TextFormField _buildNumberField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      validator: (value) {
        if (value.isEmpty) return "Enter your contact number.";
      },
      onFieldSubmitted: (value) {
        contact = value;
      },
      controller: _contact,
      decoration: InputDecoration(
        icon: Icon(Icons.phone),
        labelText: 'Enter your contact',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Contact number",
      ),
    );
  }

  TextFormField _buildContactField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(),
      validator: (value) {
        if (value.isEmpty) return "Enter the no. of passenger";
      },
      onFieldSubmitted: (value) {
        number = value;
      },
      controller: _number,
      decoration: InputDecoration(
        icon: Icon(Icons.people),
        labelText: 'Enter the no. of passenger',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Number of passenger",
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

  SizedBox _buildSaveButton(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 5.0,
        child: RaisedButton.icon(
            color: Colors.blue,
        icon: Icon(Icons.save),
        label: Text("Submit"),
            onPressed: () async {
              if (_fullname == null ||
                  _email == null ||
                  _contact == null ||
                  _number == null ||
                  _date == null ||
                  _source == null ||
                  _destination == null) {
return;              } 

              Map<String, dynamic> item = {
                'fullname': _fullname.text,
                'email': _email.text,
                'contact': _contact.text,
                'number': _number.text,
                'source': _source.text,
                'destination': _destination.text,
                'date': _date.text,
              };

              if (widget.item != null) {
                await FirestoreProviderAir().updateItem(widget.item.id, item);
              } else {
                await FirestoreProviderAir().addItems(item);
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => alertDialog()));
            }));
  }

  AlertDialog alertDialog() => AlertDialog(
        title: Text(
          'Successfully registered',
          style: TextStyle(color: Colors.green, fontSize: 20),
        ),
        content: Text('Thank you for using our service.'),
  );

}
