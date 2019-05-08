import 'package:flutter/material.dart';
import 'package:hamropasal/resources/db_provider.dart';
import 'package:hamropasal/ui/pages/DetailPage/airdetail.dart';
import 'package:hamropasal/ui/pages/DetailPage/busdetail.dart';
import 'package:hamropasal/ui/pages/DetailPage/doctors.dart';
import 'package:hamropasal/ui/pages/DetailPage/hoteldetails.dart';
//import 'package:hamropasal/ui/pages/detailpage.dart';
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
        backgroundColor: Colors.orange,
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
                title: Text('Logout'),
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
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Divider(),
                AnimatedContainer(
                  padding: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 30,
                  ),
                  child: ListTile(
                    title: Text(
                      'Flight Tickets',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'Hotel Reservation',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  duration: Duration(microseconds: 500),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 25),
                          elevation: 3,
                          child: FlatButton(
                              padding: EdgeInsets.all(20),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AirDetailPage()));
                              },
                              child: Image(
                                height: 150,
                                width: 120,
                                image: AssetImage('images/airline.jpg'),
                              )),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Column(children: <Widget>[
                      Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 110, horizontal: 25),
                          elevation: 3,
                          child: FlatButton(
                              padding: EdgeInsets.all(20),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HotelDetailPage()));
                              },
                              child: Image(
                                height: 150,
                                width: 120,
                                image: AssetImage('images/hotel.jpg'),
                              )),
                          color: Colors.white),
                    ]),
                  ],
                ),

                // SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ListTile(
                    title: Text(
                      'Bus Ticket Booking',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      'Doctor appointment',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          elevation: 3,
                          child: FlatButton(
                              padding: EdgeInsets.all(20),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BusDetailPage()));
                              },
                              child: Image(
                                height: 150,
                                width: 120,
                                image: AssetImage('images/bus1.jpg'),
                              )),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Column(children: <Widget>[
                      Card(
                          margin: EdgeInsets.symmetric(
                              vertical: 110, horizontal: 25),
                          elevation: 3,
                          child: FlatButton(
                              padding: EdgeInsets.all(20),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DoctorDetailPage()));
                              },
                              child: Image(
                                height: 150,
                                width: 120,
                                image: AssetImage('images/doc1.jpg'),
                              )),
                          color: Colors.white),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

busDetail(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Tickets booking',
        style: TextStyle(
            background: Paint(),
            color: Colors.green,
            fontSize: 6,
            fontStyle: FontStyle.italic),
      ),
      Icon(Icons.train),
      Divider(
        height: 8,
      ),
      Column(children: <Widget>[
        RaisedButton(
          elevation: 0,
          color: Colors.lightBlue,
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => BusDetailPage())),
          child: Text(
            'View Details',
            style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        )
      ]),
    ],
  );
}

appointmentDoctor(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Text(
        'Doctor appointment booking',
        style: TextStyle(
            background: Paint(),
            color: Colors.green,
            fontSize: 6,
            fontStyle: FontStyle.italic),
      ),
      Icon(Icons.hotel),
      Divider(
        height: 8,
      ),
      Column(children: <Widget>[
        RaisedButton(
          elevation: 0,
          color: Colors.lightBlue,
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => DoctorDetailPage())),
          child: Text(
            'View Details',
            style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        )
      ]),
    ],
  );
}

myDetail1(context) {
  return Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
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
    Column(children: <Widget>[
      RaisedButton(
        elevation: 0,
        color: Colors.lightBlue,
        onPressed: () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HotelDetailPage())),
        child: Text(
          'View Details',
          style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      )
    ])
  ]);
}

airDetail(context) {
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
        children: <Widget>[
          RaisedButton(
            elevation: 0,
            color: Colors.lightBlue,
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AirDetailPage())),
            child: Text(
              'View Details',
              style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
          )
        ],
      )
    ],
  );
}
