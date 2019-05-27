import 'package:flutter/material.dart';
import 'package:hamropasal/ui/pages/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formkey = GlobalKey();
  String email = "";
  String password = "";
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      // padding: EdgeInsets.all(20),
      color: Colors.blueGrey,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/login.png'),
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            labelText: "Email",
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            icon: Icon(Icons.email,
                                color: Colors.black, size: 30)),
                        validator: (value) {
                          if (value.isEmpty) return "please enter yor email";
                        },
                        onFieldSubmitted: (value) {
                          email = value;
                        },
                      ),
                    ),
                    ListTile(
                      title: TextFormField(
                        obscureText: true,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            labelText: "Password",
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.black),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            icon: Icon(Icons.lock_outline,
                                color: Colors.black, size: 30)),
                        validator: (value) {
                          if (value.isEmpty) return 'Please enter password';
                        },
                        onFieldSubmitted: (value) {
                          password = value;
                        },
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      color: Colors.blueGrey,
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () => login(),
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: ListTile(
                                contentPadding: EdgeInsets.all(20),
                                title: Text(
                                  'Not Registered yet?',
                                  style: TextStyle(color: Colors.black),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: ListTile(
                                contentPadding: EdgeInsets.all(20),
                                title: RaisedButton(
                                  color: Colors.blueGrey,
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  onPressed: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(
                                      builder: (context)=>SignupPage()
                                    ));
                                  },
                                )),
                          )
                        ])
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  login() async {
    if (!_formkey.currentState.validate()) return;
  }
}
