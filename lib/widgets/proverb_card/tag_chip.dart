import 'package:flutter/material.dart';
import 'package:refranes/utils/tag_utils.dart';

class TagChip extends StatelessWidget {
  final Tag tag;

  const TagChip({Key key, @required this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(color: Colors.white70, width: 1.0),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
        child: Text(
          TagUtils.tagName(context, tag).toUpperCase(),
          style: TextStyle(
              color: Colors.white70,
              fontSize: 10.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}

class PremiumTagChip extends StatelessWidget {
  final Tag tag;

  const PremiumTagChip({Key key, @required this.tag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
        child: Icon(Icons.whatshot, color: Colors.deepOrange[700]),
      ),
    );
  }
}
