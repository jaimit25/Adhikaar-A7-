import 'dart:async';

import 'package:Adhikaar/screens/Navigation.dart';
<<<<<<< HEAD
=======
import 'package:Adhikaar/screens/login.dart';
>>>>>>> f736c575d0c2e0b01be6028fce734d4b53f91d46
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      print('this function will work');
      Navigator.of(context).pop();
<<<<<<< HEAD
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Navigation()));
    });

=======
      Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
    });
>>>>>>> f736c575d0c2e0b01be6028fce734d4b53f91d46
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Center(
        child: Image.asset('assets/images/aadhikaarname.png'),
      ),
    );
  }
}
