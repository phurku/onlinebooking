import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hamropasal/ui/pages/home.dart';
import 'package:hamropasal/ui/pages/login.dart';
import 'package:hamropasal/ui/pages/signup.dart';
final FirebaseApp app=FirebaseApp(
  options:
  FirebaseOptions(
  googleAppID: '1:387317097619:android:e2b83c5c50699db4',
  apiKey: "AIzaSyC6fpww1Wy3k95rZHU26-CgfzHOe8-MxE4",
  databaseURL:  "https://hamropasal-f44ad.firebaseio.com",
  ), name: null
);

void options() => options;
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //final FirebaseAuth auth;

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState(){
    super.initState();
    Future.delayed(Duration(minutes: 3),(){
      Navigator.push(context, MaterialPageRoute(
        builder: (context)=>HomePage()
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:StreamBuilder(
        stream: FirebaseAuth.instance.onAuthStateChanged,
   builder: (BuildContext context, AsyncSnapshot<FirebaseUser>snapshot){
          if(!snapshot.hasData) return LoginPage();
          if(snapshot.hasData){
            if(snapshot.hasData!=null){
              return Scaffold(
                body: HomePage(),
              );
            }
            else{
              return LoginPage();
            }
          }
   }
      ),
      routes:{ 
        "signup":(_)=>SignupPage(),
        "home":(_)=>HomePage(),}
    );
  }
}