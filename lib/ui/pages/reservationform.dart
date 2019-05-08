import 'package:flutter/material.dart';
import 'package:hamropasal/ui/pages/DetailPage/hoteldetails.dart';

class FillForm extends StatefulWidget {
  @override
  _FillFormState createState() => _FillFormState();
}

class _FillFormState extends State<FillForm> {
  GlobalKey<FormState> _formkey = GlobalKey();
  String fullname = " ";
  String email = " ";
  String number = " ";
  String contact = " ";
  TextEditingController namec = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController numc = TextEditingController();
  TextEditingController contactc = TextEditingController();

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
              reserve(context);
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: <Widget>[
                Form(
                    key: _formkey,
                    child: Column(children: <Widget>[
                      ListTile(
                        title: TextFormField(
                          controller: namec,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Full Name',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                          ),
                          validator: (value) {
                            if (value.isEmpty) return 'Please enter full name';
                          },
                          onFieldSubmitted: (value) {
                            fullname = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: TextFormField(
                          controller: emailc,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                          ),
                          validator: (value) {
                            if (value.isEmpty) return 'Email cammot be empty';
                          },
                          onFieldSubmitted: (value) {
                            email = value;
                          },
                        ),
                      ),
                      ListTile(
                        title: TextFormField(
                          controller: numc,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'No.of members staying',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return 'Please enter the number of members.';
                          },
                          onFieldSubmitted: (value) {
                            number = value;
                          },
                        ),
                      ),
                      ListTile(
                        title: TextFormField(
                          controller: contactc,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hintText: 'Contact',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return 'Please enter your contact.';
                          },
                          onFieldSubmitted: (value) {
                            contact = value;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RaisedButton(
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (!_formkey.currentState.validate()) {
                            return  alert(context);
                          } else {
                            submit(context);
                          }
                        },
                      )
                    ]))
              ],
            ),
          ),
        ],
      ),
    );
  }

  submit(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Registered Successfully'),
      content: Text('Thanku!! '),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  void alert(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('fill completely',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      content: Text(
        'Thanku for using our service',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}

void reserve(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Do want to cancel reservation?'),
    actions: <Widget>[
      FlatButton(
        child: Text('Yes'),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HotelDetailPage()));
        },
      ),
      FlatButton(
        child: Text('No'),
        onPressed: () {
          Navigator.pop(context);
        },
      )
    ],
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
