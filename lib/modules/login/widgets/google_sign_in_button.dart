import 'package:flutter/material.dart';

class GoogleSignInButton extends StatefulWidget {
  final String label;
  final Function onPressed;

  const GoogleSignInButton(
      {Key key, @required this.label, @required this.onPressed})
      : super(key: key);

  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool conditions = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton.icon(
            color: Colors.white,
            autofocus: true,
            icon: Image.asset(
              'assets/images/google-logo.png',
              width: 40.0,
              height: 40.0,
              fit: BoxFit.fitHeight,
            ),
            label: Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            onPressed: conditions ? widget.onPressed : null,
          ),
          SizedBox(height: 20.0),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Checkbox(
                  checkColor: Colors.red,
                  activeColor: Colors.white,
                  value: conditions,
                  onChanged: (onChanged) {
                    setState(() {
                      conditions = onChanged;
                    });
                  },
                ),
                
                Text(
                  'Acepto las ',
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                InkWell(
                  onTap: null,
                  child: Text(
                    'condiciones',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      fontSize: 12.0,
                    ),
                  ),
                ),
                Text(
                  ' y ',
                  style: TextStyle(color: Colors.grey, fontSize: 12.0),
                ),
                InkWell(
                  onTap: null,
                  child: Text(
                    'términos de privacidad',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
