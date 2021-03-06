import 'dart:io';
import 'package:Adhikaar/screens/Navigation.dart';
import 'package:Adhikaar/screens/Showfeeds.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:math';

import 'package:random_string/random_string.dart';

class AddFeed extends StatefulWidget {
  @override
  _AddFeedState createState() => _AddFeedState();
}

class _AddFeedState extends State<AddFeed> {
  String uid;
  String imageurl;

  String headfeed;
  String bodyfeed;
  // userprofile localuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuser();
  }

  final TextEditingController heading = TextEditingController();
  final TextEditingController bodymaterial = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    heading.dispose();
    bodymaterial.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              // uploadImage();
              GestureDetector(
                onTap: () {
                  uploadImage();
                },
                child: Container(
                  child: imageurl != null
                      ? Image.network(imageurl)
                      : Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://i.ibb.co/jrD5yQt/undraw-Camera-re-cnp4.png'),
                              )),
                        ),
                ),
              ),

              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 60,
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextFormField(
                  controller: heading,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    hintText: 'Add heading',
                    // border: InputBorder.none
                  ),
                  onChanged: (value) {
                    setState(() {
                      value = headfeed;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 60,
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: TextFormField(
                  controller: bodymaterial,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    hintText: 'Add Body',
                    // border: InputBorder.none
                  ),
                  onChanged: (value) {
                    setState(() {
                      value = bodyfeed;
                    });
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  // uploadImage();
                  FirebaseFirestore.instance.collection('Feed').add({
                    'Photo': imageurl,
                    'Head': heading.text,
                    'body': bodymaterial.text,
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navigation()));
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
                      'Add Feed',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Divider(
                  height: 10,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: Icon(
                        Icons.access_time_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Check Feeds',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShowFeeds()));
                  print('this is LeaderBoard Check Button');
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>)));
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
            ],
          ),
        ));
  }

  getuser() async {
    User user = FirebaseAuth.instance.currentUser;
    uid = user.uid;
    print(uid);
  }

  uploadImage() async {
    print('This Code Will Run');
    final _storage = FirebaseStorage.instance;
    final _picker = ImagePicker();
    PickedFile image;

    //Check Permissions
    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted) {
      //Select Image
      image = await _picker.getImage(source: ImageSource.gallery);
      var file = File(image.path);
      if (image != null) {
        //Upload to Firebase
        var snapshot = await _storage
            .ref()
            .child('Feeds')
            .child(generateRandomString(200))
            .putFile(file);

        var downloadUrl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageurl = downloadUrl;
        });
        // FirebaseFirestore.instance.collection('Feed').add({
        //   'Photo': imageurl,
        //   'Head': heading.text,
        //   'body': bodymaterial.text,
        // });
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => Navigation()));

        print(imageurl);
      } else {
        print('No Path Received');
      }
    } else {
      print('Grant Permissions and try again');
    }
  }

  String generateRandomString(int len) {
    var r = Random();
    const _chars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[r.nextInt(_chars.length)])
        .join();
  }
}
