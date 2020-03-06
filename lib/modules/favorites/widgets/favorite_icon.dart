import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../rewards/services/rewards_service.dart';
import '../model/favorites.dart';
import '../services/favorites_service.dart';

class FavoriteIcon extends StatelessWidget {
  final int id;

  const FavoriteIcon({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: FavoritesService.getValueListenable(),
      builder: (context, Box<Favorites> box, widget) {
        bool _isFavorite = FavoritesService.isFavorite(id);
        return IconButton(
          iconSize: 30.0,
          icon: Icon(
            _isFavorite ? Icons.favorite : Icons.favorite_border,
            color: Colors.white,
          ),
          onPressed: () {
            FavoritesService.update(id);
            RewardsService.updateAddFavorites(context, _isFavorite);
          },
        );
      },
    );
  }
}
