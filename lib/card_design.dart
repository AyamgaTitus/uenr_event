import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCard extends StatefulWidget {
  final myIcons;
  final myCardName;
  final style;
  const myCard({
    Key? key,
    required this.myIcons,
    required this.myCardName,
    required this.style,
  }) : super(key: key);

  @override
  _myCardState createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      //mainAxisSize: MainAxisSize.min,
      elevation: 10,
      shadowColor: Colors.blueGrey,
      child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Icon(
                (widget.myIcons),
                size:45,
                color: Colors.pink
            ),
            Center(
              child: Text(widget.myCardName,
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: 'LobsterTwo', fontSize: 24),),
            ),
          ],
        ),
      ),
    );
  }
}
