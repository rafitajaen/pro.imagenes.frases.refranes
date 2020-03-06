import 'package:flutter/material.dart';

class InfoDialog extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;

  final IconData topIcon;

  const InfoDialog({Key key, @required this.title, @required this.description, @required this.buttonText, @required this.topIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 60.0, 10.0, 10.0),
            margin: EdgeInsets.only(top: 20.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // To make the card compact
              children: <Widget>[
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 24.0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // To close the dialog
                    },
                    color: Colors.blueAccent[400],
                    
                    child: Text(buttonText, style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.w600),),
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 35.0,
              child: Icon(topIcon, size: 35.0, color: Colors.white,),
            ),
          ),
        ],
      ),
    );
  }
}
