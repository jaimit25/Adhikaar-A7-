import 'package:Adhikaar/screens/AddVideo.dart';
import 'package:Adhikaar/screens/showView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class adminhomepage extends StatefulWidget {
  @override
  _adminhomepageState createState() => _adminhomepageState();
}

class _adminhomepageState extends State<adminhomepage> {
  String newcode;
  var db;
  var datafromdatabase;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AdminPage",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w800),
        ),
      ),
      body: Scaffold(
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.people, size: 40),
                  ),
                  Container(
                    child: Text(
                      'Add Video',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // print('this is LeaderBoard Check Button');
                Navigator.push(context,MaterialPageRoute(builder: (context)=> AddVideo()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                      // Color.fromARGB(255, 25, 178, 238),
                      Colors.red[400],
                      Colors.amber[600]
                    ],
                  ),
                  // color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Check',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Divider(
                height: 10,
                color: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.people, size: 40),
                  ),
                  Container(
                    child: Text(
                      'Select Top LeaderBoard Answers',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // print('this is LeaderBoard Check Button');
                Navigator.push(context,MaterialPageRoute(builder: (context)=> ShowView()));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 50,
                decoration: BoxDecoration(
                  gradient: new LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                      // Color.fromARGB(255, 25, 178, 238),
                      Colors.red[400],
                      Colors.amber[600]
                    ],
                  ),
                  // color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Select Top Answers',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Divider(
                height: 10,
                color: Colors.black,
              ),
            ),
            // Container(
            //   padding: EdgeInsets.only(left: 10),
            //   height: 56,
            //   decoration: raisedDecoration,
            //   margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            //   child: TextField(
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 18,
            //     ),
            //     decoration: InputDecoration(
            //         hintStyle: TextStyle(
            //           color: Colors.black38,
            //           fontSize: 18,
            //         ),
            //         hintText: 'Enter New Code',
            //         border: InputBorder.none),
            //     onChanged: (value) {
            //       setState(() {
            //         newcode = value;
            //       });
            //     },
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () {
            //     print(newcode);
            //     db = FirebaseDatabase.instance.reference();
            //     print('this code has run');
            //     db.child('admin').set({'data': newcode});
            //   },
            //   child: Container(
            //     margin: EdgeInsets.all(10),
            //     height: 50,
            //     decoration: BoxDecoration(
            //       gradient: new LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomRight,
            //         colors: [
            //           // Color.fromARGB(255, 25, 178, 238),
            //           Colors.red[400],
            //           Colors.amber[600]
            //         ],
            //       ),
            //       // color: Colors.black,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Center(
            //       child: Text(
            //         'Change Code',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.w700,
            //             fontSize: 20),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
