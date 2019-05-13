import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:hamropasal/ui/pages/home.dart';
import 'package:hamropasal/ui/pages/login.dart';
import 'package:hamropasal/ui/pages/reservationform.dart';

class HotelDetailPage extends StatefulWidget {
  @override
  _HotelDetailPageState createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hotel Room Booking'),
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
      drawer: Drawer(
        child: DrawerHeader(
          padding: EdgeInsets.all(0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(
                  'onlinehotel@yahho.com',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                accountName: Text(
                  'Online Hotel Booking',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
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
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            height: 250,
            child: Carousel(
              boxFit: BoxFit.contain,
              images: [
                AssetImage('images/hotel1.jpg'),
                AssetImage('images/hotel2.jpg'),
                AssetImage('images/hotel3.jpg'),
                AssetImage('images/hotel4.jpg'),
                AssetImage('images/hotel5.jpg'),
                AssetImage('images/hotel6.jpg'),
              ],
              animationCurve: Curves.fastLinearToSlowEaseIn,
              animationDuration: Duration(milliseconds: 1200),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3),
            child: ListTile(
              title: hayat(context),
            ),
          )
        ],
      ),
    );
  }

  hayat(BuildContext context) {
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HayatDetailPage()));
              },
              subtitle: Text(
                'No.1 Hotel in Kathmandu.',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                'Hayat Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              title: Image(
                image: AssetImage('images/hotel1.jpg'),
              )),
          Divider(),
          ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HayatDetailPage()));
              },
              subtitle: Text(
                'Hotel in Lazimpat.',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                'Hotel Sangrila',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              title: Image(
                image: AssetImage('images/hotel2.jpg'),
              )),
          Divider(),
          ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HayatDetailPage()));
              },
              subtitle: Text(
                'No.1 Hotel at Boudha.',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                'Tibet Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              title: Image(
                image: AssetImage('images/hotel0.jpg'),
              )),
          Divider(),
          ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HayatDetailPage()));
              },
              subtitle: Text(
                'Top listed 3 star Hotel in Nepal.',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                'Manang Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              title: Image(
                height: 200,
                width: 50,
                image: AssetImage('images/hotel7.jpg'),
              )),
          Divider(),
          ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HayatDetailPage()));
              },
              subtitle: Text(
                'Best Price of 5 star Hotel in Kathmandu ',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                'Hotel Malla',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              title: Image(
                image: AssetImage('images/hotel8.jpg'),
              )),
          Divider(),
          ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HayatDetailPage()));
              },
              subtitle: Text(
                ' A 4 star hotel at the heart of Kathmandu',
                style: TextStyle(color: Colors.black),
              ),
              trailing: Text(
                ' Hotel Ambassador',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              title: Image(
                image: AssetImage('images/hotel9.jpg'),
              )),
          Divider(),
        ],
      ),
    );
  }
}

class HayatDetailPage extends StatefulWidget {
  @override
  _HayatDetailPageState createState() => _HayatDetailPageState();
}

class _HayatDetailPageState extends State<HayatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hayat Hotel",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            FlatButton(
              child: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HotelDetailPage()));
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
                    'hotelHayat@hotmail.com',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  accountName: Text(
                    ' Booking for Hayat',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                  currentAccountPicture: new Image.asset(
                    'images/hayat.jpg',
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
                    title: Text('About Hayat'),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutHayat()));
                    }),
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
                 ListTile(
                  leading: Icon(
                    Icons.book,
                    size: 35,
                  ),
                  title: Text('Reservation'),
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context)=>AddPage()
                    ));
                  },
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
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              height: 250,
              child: Carousel(
                boxFit: BoxFit.contain,
                images: [
                  AssetImage('images/hayat1.jpg'),
                  AssetImage('images/hayat2.jpg'),
                  AssetImage('images/hayat3.png'),
                  AssetImage('images/hayat4.jpg'),
                ],
                animationCurve: Curves.easeOutSine,
                animationDuration: Duration(milliseconds: 1200),
              ),
            ),
            Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Best Luxury Hotel & Resort in Kathmandu",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              RaisedButton(
                                onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context)=>AddPage()
                                  ));
                                },
                                child: Text('Reserve',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold
                              )))
                            ],
                          ),
                        ],
                      ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text:
                                      " Hyatt Regency Kathmandu is a 5 star luxury hotel and resort in Kathmandu and is set on 37 acres of landscaped grounds, created in the traditional Newari style of Nepalese architecture. This beautiful hotel and resort is located on the road to the Boudhanath Stupa: the most holy of all Tibetan Buddhist shrines outside of Tibet, and a UNESCO World Heritage Site which is 5 minutes walk from the hotel.  The hotel is just 4 km (2.4 miles) from the Tribhuvan International Airport and 6 km (3.7 miles) from the city center of Kathmandu."),
                            ]),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Rooms',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 250,
                        child: Carousel(
                          boxFit: BoxFit.contain,
                          images: [
                            AssetImage('images/room1.jpg'),
                            AssetImage('images/room2.jpg'),
                            AssetImage('images/hayat5.jpg'),
                            AssetImage('images/room3.jpg'),
                          ],
                          animationCurve: Curves.fastLinearToSlowEaseIn,
                          animationDuration: Duration(milliseconds: 900),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'Dining and Swimming pool',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 250,
                        child: Carousel(
                          boxFit: BoxFit.contain,
                          images: [
                            AssetImage('images/din.jpg'),
                            AssetImage('images/din1.jpg'),
                            AssetImage('images/din2.png'),
                            AssetImage('images/din3.png'),
                            AssetImage('images/din4.jpg'),
                            AssetImage('images/swm.jpg'),
                            AssetImage('images/swm1.png'),
                          ],
                          animationCurve: Curves.easeOutQuart,
                          animationDuration: Duration(milliseconds: 900),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
                    ])),
          ],
        ));
  }
}

class Viewrooms extends StatefulWidget {
  @override
  _ViewroomsState createState() => _ViewroomsState();
}

class _ViewroomsState extends State<Viewrooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[],
      ),
    );
  }
}

class AboutHayat extends StatefulWidget {
  @override
  _AboutHayatState createState() => _AboutHayatState();
}

class _AboutHayatState extends State<AboutHayat> {
  @override
  Widget build(BuildContext context) {
    var selectItem;
    var _pageController=PageController();
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Introduction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Icon(Icons.exit_to_app),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HayatDetailPage()));
                  },
                )
              ],
            ),
            body: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Best Luxury Hotel & Resort in Kathmandu",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                  text:
                                      " Hyatt Regency Kathmandu is a 5 star luxury hotel and resort in Kathmandu and is set on 37 acres of landscaped grounds, created in the traditional Newari style of Nepalese architecture. This beautiful hotel and resort is located on the road to the Boudhanath Stupa: the most holy of all Tibetan Buddhist shrines outside of Tibet, and a UNESCO World Heritage Site which is 5 minutes walk from the hotel.  The hotel is just 4 km (2.4 miles) from the Tribhuvan International Airport and 6 km (3.7 miles) from the city center of Kathmandu."),
                            ]),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Services",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [TextSpan(text: "")]),
                        textAlign: TextAlign.justify,
                      ),
                    ]
                    )
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                     currentIndex: selectItem,
                    type: BottomNavigationBarType.fixed,
                    onTap: (index){
                      _pageController.animateToPage(index,duration:Duration(milliseconds: 300),curve: Curves.easeInOut);
                   setState(() {
                    selectItem=index; 
                   });
                               },
                               items: [

                                 BottomNavigationBarItem(
                                   backgroundColor: Colors.blue,
                                   title: Text('Home'),
                                   icon: Icon(Icons.home)
                                 ),
                                  BottomNavigationBarItem(
                                   title: Text('Reservation'),
                                   icon: Icon(Icons.book)
                                 ),
                                  BottomNavigationBarItem(
                                   title: Text('Exit'),
                                   icon: Icon(Icons.exit_to_app)
                                 ),
                               ],
               
                ),
                );
  }
}
