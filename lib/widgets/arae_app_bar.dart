import 'package:flutter/material.dart';

class AraeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isHome;

  const AraeAppBar({Key key, @required this.title, this.isHome = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      leading: isHome ? Container() : _buildAppBarLeading(context),
      title: Text(
        title,
        style:
            TextStyle(color: Colors.blueGrey[900], fontWeight: FontWeight.w600),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget _buildAppBarLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
