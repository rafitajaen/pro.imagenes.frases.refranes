import 'package:flutter/material.dart';

class AnonymousSignInButton extends StatelessWidget {
  final String label;
  final Function onPressed;

  const AnonymousSignInButton({Key key, this.label, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
          0, 0, 0, MediaQuery.of(context).size.height * 0.07),
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
                label,
                style: TextStyle(
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
