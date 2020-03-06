import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/firebase_auth_service.dart';
import '../widgets/data_search.dart';

class MyUtils {
  static Future<void> setPreferredOrientation() async {
    return await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  static sendToFirestore(User user, Map<String, dynamic> feedback) {
    feedback['01-name'] = user.name.toString();
    feedback['02-email'] = user.email.toString();
    feedback['03-date'] = DateTime.now().toString();

    Firestore.instance.runTransaction(
      (transactionHandler) {
        return Firestore.instance
            .collection('feedback')
            .document(user.email.toString())
            .setData(feedback);
      },
    );
  }

  static Widget buildSearch(BuildContext context) {
    return IconButton(
      //color: Colors.black,
      icon: Icon(Icons.search),
      onPressed: () {
        showSearch(context: context, delegate: DataSearch());
      },
    );
  }
}
