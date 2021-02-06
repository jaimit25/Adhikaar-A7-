import 'package:Adhikaar/screens/login.dart';
import 'package:Adhikaar/videoViewer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Adhikaar/screens/splash.dart';
import 'package:flutter/material.dart';

import 'helper/constants.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => new MyApp(),
        '/videoviewer': (BuildContext context) => new VideoViewer(),
      },
      home: splash(),
    );
  }
}
