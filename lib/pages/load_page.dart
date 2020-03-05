import 'package:flutter/material.dart';
import 'package:refranes/database/my_database.dart';
import 'package:refranes/pages/home_page.dart';

class LoadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyDatabase.initialize(context);
    return HomePage();
  }
}