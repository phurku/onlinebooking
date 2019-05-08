import 'package:flutter/material.dart';
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
      body: ImageCarousel(),
    );
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
      Container(
        child: aceTravels(context),
        padding: EdgeInsets.symmetric(vertical: 1),
      ),
      Container(
        child: uniglobeTravels(context),
        padding: EdgeInsets.symmetric(vertical: 1),
      ),
      Container(
        child: uniqueTravels(context),
        padding: EdgeInsets.symmetric(vertical: 1),
      ),
      Container(
        child: bestTravels(context),
        padding: EdgeInsets.symmetric(vertical: 1),
      ),
    ]);
  }

  aceTravels(context) {
    return Container(
      child: Stack(children: <Widget>[
        Card(
          //  color: Colors.red,
          elevation: 5,
          child: Container(
              height: 90,
              width: 2000,
              child: RaisedButton(
                onPressed: () {},
                child: ListTile(
                  trailing: Text(
                    'view more',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                  subtitle: Image(
                    image: AssetImage('images/air5.jpg'),
                  ),
                  leading: Text(
                    'Ace Travels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AceTravelsDetail()));
                  },
                  // title:Icon(Icons.home) ,
                ),
              )),
        ),
      ]),
    );
  }

  uniglobeTravels(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        Card(
          //  color: Colors.red,
          elevation: 5,
          child: Container(
              height: 90,
              width: 2000,
              child: RaisedButton(
                onPressed: () {},
                child: ListTile(
                  trailing: Text(
                    'view more',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                  title: Image(
                    image: AssetImage('images/air4.jpg'),
                  ),
                  leading: Text(
                    'Uniglobe travels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UniTravelsDetail()));
                  },
                  // title:Icon(Icons.home) ,
                ),
              )),
        ),
      ]),
    );
  }

  uniqueTravels(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        Card(
          //  color: Colors.red,
          elevation: 5,
          child: Container(
              height: 90,
              width: 2000,
              child: RaisedButton(
                onPressed: () {},
                child: ListTile(
                  trailing: Text(
                    'view more',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                  title: Image(
                    image: AssetImage('images/air1.jpg'),
                  ),
                  leading: Text(
                    'Unique travels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UniqueDetail()));
                  },
                  // title:Icon(Icons.home) ,
                ),
              )),
        ),
      ]),
    );
  }

  bestTravels(BuildContext context) {
    return Container(
      child: Stack(children: <Widget>[
        Card(
          //  color: Colors.red,
          elevation: 5,
          child: Container(
              height: 90,
              width: 2000,
              child: RaisedButton(
                onPressed: () {},
                child: ListTile(
                  trailing: Text(
                    'view more',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                  title: Image(
                    image: AssetImage('images/air2.jpg'),
                  ),
                  leading: Text(
                    'Best travels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BestTravelsDetail()));
                  },
                  // title:Icon(Icons.home) ,
                ),
              )),
        ),
      ]),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////
//                       Required         Classes

class UniqueDetail extends StatefulWidget {
  @override
  _UniqueDetailState createState() => _UniqueDetailState();
}

class _UniqueDetailState extends State<UniqueDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Unique Tours an Travels'),
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
    );
  }
}

class BestTravelsDetail extends StatefulWidget {
  @override
  _BestTravelsDetailState createState() => _BestTravelsDetailState();
}

class _BestTravelsDetailState extends State<BestTravelsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Best travel pvt ltd.'),
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
    );
  }
}

class UniTravelsDetail extends StatefulWidget {
  @override
  _UniTravelsDetailState createState() => _UniTravelsDetailState();
}

class _UniTravelsDetailState extends State<UniTravelsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'UniGlobe Tours and Travels',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
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
    );
  }
}

class AceTravelsDetail extends StatefulWidget {
  @override
  _AceTravelsDetailState createState() => _AceTravelsDetailState();
}

class _AceTravelsDetailState extends State<AceTravelsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ace Tours and Travels',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AirDetailPage()));
            },
          ),
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
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          shrinkWrap: false,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
