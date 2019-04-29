import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hamropasal/resources/firebase_auth_provider.dart';
import 'package:hamropasal/ui/pages/home.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String email = "";
  String password = "";
  String message = "";
  String confirmpassword = "";

  final TextEditingController emailc = TextEditingController();
  final TextEditingController passwordc = TextEditingController();
  final TextEditingController confirmpasswordc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(message),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/reg.png'), fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                  child: Column(children: <Widget>[
                ListTile(
                  title: TextFormField(
                    controller: emailc,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "Email address",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                    validator: (value) {
                      if (value.isEmpty) return 'Field cannot be empty';
                    },
                    onSaved: (value) {
                      email = value;
                    },
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    controller: passwordc,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock_outline),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                    validator: (value) {
                      if (value.isEmpty) return 'Field cannot be empty';
                    },
                    onSaved: (value) {
                      password = value;
                    },
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    controller: confirmpasswordc,
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        icon: Icon(Icons.space_bar),
                        hintText: "Confirm password",
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25))),
                    validator: (value) {
                      if (value.isEmpty) return 'Field cannot be empty';
                    },
                    onSaved: (value) {
                      confirmpassword = value;
                    },
                  ),
                ),
              ])),
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Container(
                    height: 30,
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(horizontal: 150),
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => signup(),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void signup() async {
    print(emailc.text);
    print(passwordc.text);
    print(confirmpasswordc.text);
    try {
      FirebaseUser user =
          await FirebaseAuthProvider().signup(emailc.text, passwordc.text);
      if (user == null) print("Signup Failed");
    } catch (e) {
      print(e.message);
    }
  }
}
