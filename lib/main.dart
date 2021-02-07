import 'package:Adhikaar/screens/AddFeed.dart';
import 'package:Adhikaar/screens/Navigation.dart';
import 'package:Adhikaar/screens/login.dart';
import 'package:Adhikaar/screens/register.dart';
import 'package:Adhikaar/tabs/gamesection.dart';
import 'package:Adhikaar/videoViewer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Adhikaar/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI Practise',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: <String, WidgetBuilder>{
          '/landingpage': (BuildContext context) => new MyApp(),
          '/videoviewer': (BuildContext context) => new VideoViewer(),
          '/quiz': (BuildContext context) => new VideoViewer(),
        },
        home: splash());
  }
}
