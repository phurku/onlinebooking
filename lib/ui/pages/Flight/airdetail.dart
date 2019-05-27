import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamropasal/ui/pages/Flight/bookingpage.dart';
import 'package:hamropasal/ui/pages/home.dart';
import 'package:hamropasal/ui/pages/login.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AirDetailPage extends StatefulWidget {
  @override
  _AirDetailPageState createState() => _AirDetailPageState();
}

class _AirDetailPageState extends State<AirDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Flight ticket booking',
          style: TextStyle(fontSize: 17),
        ),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              ImageCarousel(),
              new Container(
                child: ListTile(
                    title: Text(
                      'Available institutes',
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          fontStyle: FontStyle.italic),
                    ),
                    trailing: RaisedButton(
                      child: Text('View More'),
                      onPressed: () {},
                    )),
              ),
              Divider(),
              new Container(
                child: ListTile(
                  title: RaisedButton(
                    child: Card(
                      child: ListTile(
                        title: Image.asset('images/ace.jpg',
                            height: 100, width: 200),
                        subtitle: Text(
                          'Ace Tours and Travels',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AceTravelPage()));
                    },
                  ),
                ),
              ),
              new Container(
                child: ListTile(
                  title: RaisedButton(
                    child: Card(
                      child: ListTile(
                        title: Image.asset('images/air2.jpg',
                            height: 100, width: 200),
                        subtitle: Text(
                          'Fly Over Nepal',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 33,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlyTravelPage()));
                    },
                  ),
                ),
              ),
              new Container(
                child: ListTile(
                  title: RaisedButton(
                    child: Card(
                      child: ListTile(
                        title: Image.asset('images/air3.jpg',
                            height: 100, width: 200),
                        subtitle: Text(
                          'Guide Tours',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GuideTravelPage()));
                    },
                  ),
                ),
              ),
              new Container(
                child: ListTile(
                  title: RaisedButton(
                    child: Card(
                      child: ListTile(
                        title: Image.asset('images/air4.jpg',
                            height: 100, width: 200),
                        subtitle: Text(
                          'Nepal Treks pvt.ltd ',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GoldenTravelPage()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AceTravelPage extends StatefulWidget {
  @override
  _AceTravelPageState createState() => _AceTravelPageState();
}

class _AceTravelPageState extends State<AceTravelPage> {
  var _pageController = PageController();

  int selectMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text('Ace Tours and Travels'),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AirDetailPage()));
            },
          )
        ],
      ),
      drawer: Drawer(
        child: DrawerHeader(
          padding: EdgeInsets.all(0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(
                  'www.Acetravel.com.np',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                accountName: Text(
                  'Ace Travels',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'General Setting',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'Contact us',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: <Widget>[
        new Container(
          padding: EdgeInsets.all(5),
          height: 250,
          child: Carousel(
            boxFit: BoxFit.contain,
            images: [
              //AssetImage('images/ace1.jpg'),
              AssetImage('images/ace2.jpg'),
              AssetImage('images/ace3.jpg'),
              AssetImage('images/ace4.jpg'),
              AssetImage('images/ace5.jpg'),
              AssetImage('images/ace.jpg'),
            ],
            animationCurve: Curves.fastLinearToSlowEaseIn,
            animationDuration: Duration(milliseconds: 1200),
          ),
        ),
        new Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          RaisedButton(
                            color: Colors.grey,
                            child: Text('Home',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => alertDialog()));
                            },
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[],
                      ),
                    ],
                  ),
                ])),
        Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: <Widget>[
                    Text(
                      "Introduction to Ace",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  SizedBox(
                    height: 10.0,
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text:
                                  " Ace Travel allow to book air travel through their smart phone, the application allow them to search for the lowest fare available and also make a booking request which is fulfilled online.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        ]),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  new Container(
                    child: Center(
                      child: Text(
                        "The Ace travels lady told me not to worry, and stay overnight, and the hotel fare is on agency, because it was their carelessness. Because of her, I missed an important presentation in the most reputed conference in my profession. ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  new Container(
                    child: Center(
                      child: Text(
                        "You can book your ticket from any place in Nepal. So in oer to book for flight tickets you can fill the fom below, pressing the reservation button",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        color: Colors.red,
                        child: Text(
                          'Reserveation',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookingPage()));
                        },
                      )
                    ],
                  )
                ]))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectMenu,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _pageController.animateToPage(index,
              duration: Duration(microseconds: 300), curve: Curves.easeInOut);
          setState(() {
            selectMenu = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              backgroundColor: Colors.green,
              title: Text(
                'Gmail',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(Icons.mail)),
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              title: Text(
                'Call',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(Icons.phone)),
          BottomNavigationBarItem(
              backgroundColor: Colors.red,
              title: Text(
                'Message',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              icon: Icon(
                Icons.message,
              ))
        ],
      ),
    );
  }

  AlertDialog alertDialog() => AlertDialog(
        title: Text(
          'Offers are available',
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        content: Text('Waana Take??'),
        actions: <Widget>[
                    FlatButton(
              child: Text('Yes'),
              onPressed: () =>Navigator.pop(context),
              ),
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      );
}

class FlyTravelPage extends StatefulWidget {
  @override
  _FlyTravelPageState createState() => _FlyTravelPageState();
}

class _FlyTravelPageState extends State<FlyTravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
      centerTitle: true,
      title: Text('Fly Travel and Tours'),
    ));
  }
}

class GuideTravelPage extends StatefulWidget {
  @override
  _GuideTravelPageState createState() => _GuideTravelPageState();
}

class _GuideTravelPageState extends State<GuideTravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text('Guide Tour and Travel'),
    ));
  }
}

class GoldenTravelPage extends StatefulWidget {
  @override
  _GoldenTravelPageState createState() => _GoldenTravelPageState();
}

class _GoldenTravelPageState extends State<GoldenTravelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true, title: Text('Nepal Treks private Limited')));
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      new Container(
        padding: EdgeInsets.all(5),
        height: 250,
        child: Carousel(
          boxFit: BoxFit.contain,
          images: [
            AssetImage('images/air1.jpg'),
            AssetImage('images/air2.jpg'),
            AssetImage('images/air3.jpg'),
            AssetImage('images/air4.jpg'),
            AssetImage('images/air5.jpg'),
            AssetImage('images/air6.jpg'),
          ],
          animationCurve: Curves.fastLinearToSlowEaseIn,
          animationDuration: Duration(milliseconds: 2000),
        ),
      ),
    ]);
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
//                       Required         Classes

class AirDetailPAge extends StatefulWidget {
  @override
  _AirDetailPAgeState createState() => _AirDetailPAgeState();
}

class _AirDetailPAgeState extends State<AirDetailPAge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text('Online Tickets for flight'),
      ),
      drawer: Drawer(
        child: DrawerHeader(
          padding: EdgeInsets.all(0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(
                  'www.Acetravel.com.np',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                accountName: Text(
                  'Ace Travels',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
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
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'About',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'General Setting',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'Contact us',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                title: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Scaffold(
            appBar: new AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Ace'),
        )),
      ),
    ));
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[ListTile()],
            )
          ],
        ),
      ],
    );
  }
}
