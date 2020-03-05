import 'package:flutter/material.dart';
import 'package:refranes/utils/tag_utils.dart';

class Article {
  Article();

  Article.admin(
      {this.id,
      this.language,
      this.title,
      this.subtitle,
      this.image,
      this.tags,
      this.color});

  int id;
  String language;
  String title;
  String subtitle;
  String image;
  List<Tag> tags;
  Color color;

  bool isTaggedWith(Tag tag) {
    bool output = false;
    if (tags != null) {
      tags.map((t) {
        output = (output || t == tag);
      }).toList();
    }
    return output;
  }

  bool isInFavoritesList(List<int> favorites) {
    bool output = false;

    if (favorites != null) {
      favorites.map((fav) {
        bool temp = (fav == id);
        output = output || temp;
      }).toList();
    }

    return output;
  }
}
