import 'package:Adhikaar/screens/adminhomepage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddVideo extends StatefulWidget {
  @override
  _AddVideoState createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
  String Link;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //   image: NetworkImage(
              //       'https://img2.pngio.com/pink-girl-silhouettes-poster-girls-sketch-png-transparent-pink-lady-png-650_651.jpg'),
              // ),
              border: Border.all(width: 2, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: ListView(children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/adhikaar.jpeg'),
              )),
              // decoration: BoxDecoration(
              //     border: Border.all(width: 2, color: Colors.black),
              //     borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.only(top: 80, left: 10, right: 10),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.only(top: 80, left: 10, right: 10),
              child: TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    hintText: 'Enter Link',
                    border: InputBorder.none),
                onChanged: (value) {
                  Link = value;
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                FirebaseFirestore.instance
                    .collection('/VideoLink')
                    .doc('videos')
                    .set({'video': Link}).then((result) {
                  print('updated');
                  Fluttertoast.showToast(
                      msg: 'Video Uploaded',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1);
                }).catchError((e) {
                  print('error');
                });

                // FirebaseFirestore.instance
                //     .collection('Videolink')
                //     .doc('link')
                //     .set({'video': Link});

                // print(Link);
                // FirebaseFirestore.instance
                //     .collection('VideoLink')
                //     .doc('videolinktobefetched')
                //     .set({'videolink': Link}).then((value) {
                //   Fluttertoast.showToast(
                //       msg: "Image Uploaded",
                //       toastLength: Toast.LENGTH_SHORT,
                //       gravity: ToastGravity.CENTER,
                //       timeInSecForIosWeb: 1);
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => adminhomepage()));
                // }).catchError((e) {
                //   Fluttertoast.showToast(
                //       msg: 'Error uploading',
                //       toastLength: Toast.LENGTH_LONG,
                //       gravity: ToastGravity.BOTTOM,
                //       timeInSecForIosWeb: 2);
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => adminhomepage()));
                // });
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => adminhomepage()));
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
                    'Add Video',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
