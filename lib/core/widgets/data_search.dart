import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../modules/proverb/model/proverb.dart';
import '../../modules/proverb/pages/proverb_detail_page.dart';

class DataSearch extends SearchDelegate<String> {
  DataSearch();

  final List<String> popularTitles = [
    'PopularA',
    'PopularB',
    'PopularC',
    'PopularD'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for AppBar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            (query.isEmpty) ? close(context, null) : query = '';
            showSuggestions(context);
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading Icon on the left of AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show some result based on the selection
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Proverb> currentDB =
        Hive.box('app_language').get('app_language_key').currentDB;

    List<Proverb> result = currentDB.where((a) {
      bool inTitle = a.title.toLowerCase().contains(query.toLowerCase());
      //bool inSubtitle = a.subtitle.toLowerCase().contains(query.toLowerCase());
      return inTitle;
    }).toList();

    return ListView.builder(
      itemCount: result.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.turned_in_not),
        //title: Text(result[index].title),
        title: RichText(
          text: searchMatch('\"${result[index].title}\"'),
        ),
        //subtitle: Text('\"${result[index].subtitle}\"'),
        onTap: () {},
        trailing: RaisedButton(
          child: Text('Ver'),
          onPressed: () {
            ProverbDetailPage.navigateTo(context, result[index]);
          },
        ),
      ),
    );
  }

  TextSpan searchMatch(String match) {
    TextStyle posRes =
        TextStyle(color: Colors.white, backgroundColor: Colors.red);
    TextStyle negRes =
        TextStyle(color: Colors.black, backgroundColor: Colors.white);
    String search = query;

    if (search == null || search == "")
      return TextSpan(text: match, style: negRes);
    var refinedMatch = match.toLowerCase();
    var refinedSearch = search.toLowerCase();
    if (refinedMatch.contains(refinedSearch)) {
      if (refinedMatch.substring(0, refinedSearch.length) == refinedSearch) {
        return TextSpan(
          style: posRes,
          text: match.substring(0, refinedSearch.length),
          children: [
            searchMatch(
              match.substring(
                refinedSearch.length,
              ),
            ),
          ],
        );
      } else if (refinedMatch.length == refinedSearch.length) {
        return TextSpan(text: match, style: posRes);
      } else {
        return TextSpan(
          style: negRes,
          text: match.substring(
            0,
            refinedMatch.indexOf(refinedSearch),
          ),
          children: [
            searchMatch(
              match.substring(
                refinedMatch.indexOf(refinedSearch),
              ),
            ),
          ],
        );
      }
    } else if (!refinedMatch.contains(refinedSearch)) {
      return TextSpan(text: match, style: negRes);
    }
    return TextSpan(
      text: match.substring(0, refinedMatch.indexOf(refinedSearch)),
      style: negRes,
      children: [
        searchMatch(match.substring(refinedMatch.indexOf(refinedSearch)))
      ],
    );
  }
}
