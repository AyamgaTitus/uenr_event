import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'news_pages/business_events.dart';
import 'news_pages/church_events.dart';
import 'news_pages/educational_events.dart';
import 'news_pages/entertaiment_news.dart';
import 'news_pages/political_events.dart';
import 'news_pages/sports_news.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({Key? key}) : super(key: key);

  @override
  _myDrawerState createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          DrawerHeader(
              child: Container(
                color: Colors.pink,
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                     CircleAvatar(
                      backgroundImage: AssetImage('images/uenr_logo.jpg'),
                      foregroundColor: Colors.white,
                      radius: 55,
                    ),
                    // FittedBox(
                    //     child: Image.asset('images/CSITSA.png',),
                    // fit: BoxFit.cover,),
                  ],
                ),

              )),

          const ListTile(
            title:  Center(
              child: Text('Events Category', style: TextStyle(
                color: Colors.black54,
                fontSize: 10.4,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.1,
              )),
            ),

          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ListTile(
            leading:  const Icon((Icons.home_outlined), color: Colors.blueGrey),
            hoverColor: Colors.lightBlueAccent,
            title: const Text('Church', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChurchEvents()));
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.business), color: Colors.blueGrey),
            title:   const Text('Business', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BusinessEvents()));
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.cast_for_education_rounded), color: Colors.blueGrey),
            title:   const Text('Education', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EducationalNews()));
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.sports), color: Colors.blueGrey),
            title:   const Text('Enterainment', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EntertainmentEvents()));
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.policy), color: Colors.blueGrey),
            title:   const Text('Politics', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PoliticalEvents()));
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.sports_football_outlined), color: Colors.blueGrey),
            title:   const Text('Sports', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SportEvents()));
                Navigator.pop(context);
              });
            },
          ),

          const Divider(
            color: Colors.blueGrey,
          ),


          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.account_box), color: Colors.blueGrey),
            title:   const Text('About', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                // Constants.prefs.setBool("singIn", false);
                //Navigator.pushReplacementNamed(context, singIn.routeName);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.contact_phone), color: Colors.blueGrey),
            title:   const Text('Report', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.report), color: Colors.blueGrey),
            title:   const Text('Contact Us', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

          const Divider(
            color: Colors.blueGrey,
          ),

          ListTile(
            hoverColor: Colors.lightBlueAccent,
            leading:  const Icon((Icons.share), color: Colors.blueGrey),
            title:   const Text('Tell a Friend', style: TextStyle(
              color: Colors.black54,
              fontSize: 15.4,
              fontWeight: FontWeight.w900,
              letterSpacing: 2.1,
            )),
            onTap: () {
              setState(() {
                //...codes here.......
                Navigator.pop(context);
              });
            },
          ),

        ],
      ),

    );
  }
}
