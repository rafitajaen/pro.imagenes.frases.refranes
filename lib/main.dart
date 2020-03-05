import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:refranes/pages/load_page.dart';
import 'package:refranes/utils/my_themes.dart';
import 'package:refranes/utils/my_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Admob.initialize('ca-app-pub-9265269293046304~8466944851');
  

runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyUtils.setPreferredOrientation();
    return MaterialApp(
      title: 'Refranes',
      debugShowCheckedModeBanner: false,
      theme: MyThemes.lightTheme,
      home: LoadPage(),
    );
  }
}
