import 'package:classroom/src/presentation/home/home.dart';
import 'package:classroom/src/presentation/notifications/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static void goToHome(BuildContext context) => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => const Home(),
        ),
      );

  static void goToNotifications(BuildContext context) => Navigator.push(
        context,
        // MaterialPageRoute(
        //   builder: (context) => const Notifications(),
        // ),
        CupertinoPageRoute(
          builder: (context) => const Notifications(),
        ),
      );
}
