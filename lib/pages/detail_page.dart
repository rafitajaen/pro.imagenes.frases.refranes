import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:refranes/model/article.dart';
import 'package:refranes/widgets/arae_app_bar.dart';
import 'package:refranes/widgets/proverb_card/proverb_card.dart';

class DetailPage extends StatefulWidget {
  final Article article;

  DetailPage({@required this.article});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AraeAppBar(title: ''),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Expanded(
                child: RepaintBoundary(
                  key: globalKey,
                  child: Dismissible(
                    key: Key(''),
                    background: Container(
                      alignment: AlignmentDirectional.centerEnd,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(Icons.arrow_back, color: Colors.grey),
                          SizedBox(width: 5.0),
                          Text(
                            'ATRÁS',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    onDismissed: (direction) {
                      Navigator.of(context).pop();
                    },
                    child: ProverbCard(article: widget.article, isDetail: true),
                  ),
                ),
              ),
              DetailExpansion(widget.article),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailExpansion extends StatelessWidget {
  final Article article;

  DetailExpansion(this.article);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Text('Significado'),
        children: <Widget>[
          Container(
              margin: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
              child: Text(article.subtitle)),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }
}
