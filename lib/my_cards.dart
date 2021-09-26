import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_design.dart';
import 'news_pages/business_events.dart';
import 'news_pages/church_events.dart';
import 'news_pages/educational_events.dart';
import 'news_pages/entertaiment_news.dart';
import 'news_pages/political_events.dart';
import 'news_pages/sports_news.dart';

class MyBeautifulCards extends StatefulWidget {
  const MyBeautifulCards({Key? key}) : super(key: key);

  @override
  _MyBeautifulCardsState createState() => _MyBeautifulCardsState();
}

class _MyBeautifulCardsState extends State<MyBeautifulCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
          mainAxisSpacing: 40,
          scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        children:  [
          Material(
            child: InkWell(
              onTap: () {
                // const snackBar = SnackBar(content: Text('Educational Events'),);
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EducationalNews()));
              },
              splashColor: Colors.blue,
              focusColor: Colors.blue,
              child: const myCard(
                myIcons: Icons.cast_for_education_rounded,
                myCardName: "Educational Events",style: TextStyle(fontFamily: 'StickRegular', fontSize: 24),),
            ),
          ),

             Material(
              child: InkWell(
                onTap: () {
                  // const snackBar = SnackBar(content: Text('Business Events'),);
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BusinessEvents()));
                },
                splashColor: Colors.blue,
                focusColor: Colors.blue,
                child: const myCard(
                  myIcons: Icons.home_outlined,
                  myCardName: "Business Events",style: TextStyle(fontFamily: 'StickRegular', fontSize: 24),),
              ),
            ),


            Material(
              child: InkWell(
                onTap: () {
                  // const snackBar = SnackBar(content: Text('Entertainment Events'),);
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EntertainmentEvents()));
                },
                splashColor: Colors.blue,
                focusColor: Colors.blue,
                child: const myCard(
                  myIcons: Icons.sports,
                  myCardName: "Entertainment Events",style: TextStyle(fontFamily: 'StickRegular', fontSize: 24),),
              ),
            ),



          Material(
              child: InkWell(
                onTap: () {
                  // const snackBar = SnackBar(content: Text('Political Events'),);
                  // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PoliticalEvents()));
                },
                splashColor: Colors.blue,
                focusColor: Colors.blue,
                child: const myCard(
                  myIcons: Icons.policy,
                  myCardName: "Political Events",style: TextStyle(fontFamily: 'StickRegular', fontSize: 24),),
              ),
            ),


          Material(
            child: InkWell(
              onTap: () {
                // const snackBar = SnackBar(content: Text('Sports Events'),);
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SportEvents()));
              },
              splashColor: Colors.blue,
              focusColor: Colors.blue,
              child: const myCard(
                myIcons: Icons.sports_football_outlined,
                myCardName: "Sports Events",style: TextStyle(fontFamily: 'StickRegular', fontSize: 24),),
            ),
          ),

          Material(
            child: InkWell(
              onTap: () {
                // const snackBar = SnackBar(content: Text('Church Events'),);
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChurchEvents()));
              },
              splashColor: Colors.blue,
              focusColor: Colors.blue,
              child: const myCard(
                myIcons: Icons.home_outlined,
                myCardName: "Church Events",style: TextStyle(fontFamily: 'StickRegular', fontSize: 24),),
            ),
          ),
        ]

      ),
    );
  }
}
