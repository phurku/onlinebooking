import 'package:flutter/material.dart';
import 'package:hamropasal/resources/db_provider.dart';
import 'package:hamropasal/ui/pages/DetailPage/airdetail.dart';
import 'package:hamropasal/ui/pages/DetailPage/busdetail.dart';
import 'package:hamropasal/ui/pages/DetailPage/doctors.dart';
import 'package:hamropasal/ui/pages/DetailPage/hoteldetails.dart';
import 'package:hamropasal/ui/pages/detailpage.dart';
import 'package:hamropasal/ui/pages/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [];
  void initState() {
    super.initState();
  }

  Future<List> getItems() async {
    return DbProvider().fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Icon(Icons.exit_to_app),
          )
        ],
        backgroundColor: Colors.red,
        title: Text(
          'Available Services',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: DrawerHeader(
          padding: EdgeInsets.all(0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(
                  'OnlineBooking@hotmail.com',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                accountName: Text(
                  'Online Booking',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                currentAccountPicture: new Image.asset(
                  'images/drawer.jpg',
                  height: 50,
                  width: 40,
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.home,
                  size: 35,
                ),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.details,
                  size: 35,
                ),
                title: Text('About'),
                onTap: () => HomePage(),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_applications,
                  size: 35,
                ),
                title: Text('General Setting'),
                onTap: () => HomePage(),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.contact_mail,
                  size: 35,
                ),
                title: Text('Contact us'),
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  size: 35,
                ),
                title: Text('Sign out'),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: new EdgeInsets.all(10.0),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.lightBlue,
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(2.0),
                  shadowColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: myDetail(),
                      ),
                      
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('images/airline.jpg'),
                            height: 45,
                            width: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.all(10.0),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.lightBlue,
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(2.0),
                  shadowColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: myDetail1(),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'images/hotel.jpg',
                            ),
                            height: 65,
                            width: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.all(10.0),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.lightBlue,
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(2.0),
                  shadowColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      
                      Container(
                       
                        child: busDetail(),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'images/bus.jpg',
                            ),
                            height: 60,
                            width: 54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.all(10.0),
            child: Container(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Material(
                  color: Colors.lightBlue,
                  elevation: 8.0,
                  borderRadius: BorderRadius.circular(2.0),
                  shadowColor: Colors.black,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: appointmentDoctor(),
                      ),
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image(
                            fit: BoxFit.fitHeight,
                            image: AssetImage(
                              'images/hotel.jpg',
                            ),
                            height: 65,
                            width: 60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:hamropasal/ui/pages/DetailPage/airdetail.dart';
// import 'package:hamropasal/ui/pages/DetailPage/busdetail.dart';
// import 'package:hamropasal/ui/pages/DetailPage/doctors.dart';
// import 'package:hamropasal/ui/pages/DetailPage/hoteldetails.dart';
// //import 'package:hamropasal/ui/pages/hoteldetails.dart';
// import './home.dart';


busDetail() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Tickets booking',
        style: TextStyle(background: Paint(),
            color: Colors.green, fontSize: 6, fontStyle: FontStyle.italic),
      ),
      Icon(Icons.train),
      Divider(
        height: 8,
        
      ),
      Column(
      children: <Widget>[RaisedButton(elevation: 0,
        color: Colors.lightBlue,
        onPressed: ()=>BusDetailPage(),
         child: Text('View Details',style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold),),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
      )]
  ),
    ],
  );
}

appointmentDoctor() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Doctor appointment booking',
        style: TextStyle(background: Paint(),
            color: Colors.green, fontSize: 6, fontStyle: FontStyle.italic),
      ),
      
      Icon(Icons.hotel),
      Divider(
        height: 8,
        
      ),
      Column(
      children: <Widget>[RaisedButton(elevation: 0,
        color: Colors.lightBlue,
        onPressed: ()=>DoctorDetailPage(),
         child: Text('View Details',style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold),),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
      )]
  ),
    ],
    
     
  );
}



myDetail1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Choose your Hotels',
        style: TextStyle(
            background: Paint(),
            color: Colors.green,
            fontSize: 6,
            fontStyle: FontStyle.italic),
      ),
      Row(
        children: <Widget>[
          Icon(
            Icons.star_border,
            size: 6,
          ),
          Icon(
            Icons.star_border,
            size: 6,
          ),
          Icon(
            Icons.star_border,
            size: 6,
          ),
          Icon(
            Icons.star_border,
            size: 6,
          ),
          Icon(
            Icons.star_border,
            size: 6,
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
      Divider(
        height: 8,
        
      ),
      Column(
      children: <Widget>[RaisedButton(elevation: 0,
        color: Colors.lightBlue,
        onPressed: ()=>HotelDetailPage(),
         child: Text('View Details',style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold),),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20
        ),
      )]
  )
    ]);}

myDetail() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Air Tickets',
        style: TextStyle(
            background: Paint(),
            color: Colors.green,
            fontSize: 8,
            fontStyle: FontStyle.italic),
      ),
      Row(
        children: <Widget>[
          Text(
            "Airlines in Nepal",
            style: TextStyle(
              fontSize: 5,
            ),
          ),
        ],
      ),
      Divider(
        height: 8,
        
      ),
      Column(
      children: <Widget>[RaisedButton(
        elevation: 0,
        color: Colors.lightBlue,
        onPressed: ()=>HotelDetailPage(),
        child: Text('View Details',style: TextStyle(fontSize: 5,fontWeight: FontWeight.bold),),
        padding: EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 2
        ),
      )],
      )
    ],
  );
}
