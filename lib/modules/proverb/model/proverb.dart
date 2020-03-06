import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/services/hive_service.dart';
import '../../app_language/model/languages.dart';
import '../../tag/model/tag.dart';

part 'proverb.g.dart';

@HiveType(typeId: HiveService.proverbTypeID)
class Proverb {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final Languages language;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String subtitle;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final List<Tag> tags;
  @HiveField(6)
  final int color;

  const Proverb({
    @required this.id,
    @required this.title,
    @required this.language,
    @required this.subtitle,
    this.image =
        'https://images.unsplash.com/photo-1514483127413-f72f273478c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80',
    this.tags = const [],
    this.color = 0x20202020,
  });

  String imageUrl(BuildContext context, {int quality = 70}) {
    double width = MediaQuery.of(context).size.width;
    width = width * 1.8;

    String output = image;

    if (image.contains('unsplash')) {
      output = image.split('?')[0] + '?';
      //output= output + 'ixlib=rb-1.2.1';
      //output= output + '&ixid=eyJhcHBfaWQiOjEyMDd9';
      output = output + '&auto=format';
      output = output + '&fit=crop';
      output = output + '&w=${width.round()}';
      output = output + '&q=$quality';
    }

    return output;
  }

  bool contains(Tag tag) {
    if (tag == Tag.all) {
      return true;
    } else {
      return tags.contains(tag);
    }
  }

  Color getColor() {
    return Color(color);
  }

  bool isPremium() {
    return tags.contains(Tag.premium);
  }
}
