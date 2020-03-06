import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../model/tag.dart';
import '../widgets/tag_chip.dart';

class TagUtils {
  static Map<Tag, String> _tagNames(BuildContext context) {
    return {
      Tag.all: S.of(context).tagNamesAll,
      Tag.popular: S.of(context).tagNamesPopular,
      Tag.newest: S.of(context).tagNamesNewest,
      Tag.premium: S.of(context).tagNamesPremium
    };
  }

  static String tagName(BuildContext context, Tag tag) {
    return _tagNames(context)[tag];
  }

  static List<Widget> tagChipList(List<Tag> tags) {
    List<Widget> output = [];
    if (tags == null) tags = [];

    tags.map((t) {
      output.add(_tagChipByTag(t));
    }).toList();
    return output;
  }

  static Widget _tagChipByTag(Tag tag) {
    switch (tag) {
      case Tag.all:
        return Container();
        break;
      case Tag.popular:
        return TagChip(tag: tag);
        break;
      case Tag.newest:
        return TagChip(tag: tag);
        break;
      case Tag.premium:
        return PremiumTagChip(tag: tag);
        break;
      default:
        return Container();
        break;
    }
  }
}
