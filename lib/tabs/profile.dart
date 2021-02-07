import 'package:Adhikaar/Model/userprofile.dart';
import 'package:Adhikaar/screens/editprofile.dart';
import 'package:Adhikaar/screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  FirebaseAuth _auth;
  User user;
  String test;
  userprofile localuser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Loader();
  }

  Widget Loader() {
    return FutureBuilder(
      future:
          FirebaseFirestore.instance.collection('users').doc(user.uid).get(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return loadingwidget();
        }
        return profilepage();
      },
    );
  }

  Widget loadingwidget() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget profilepage() {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.network(
                "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
                fit: BoxFit.cover,
              ),
              // Image.asset("assets/images/children.jpg"),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    localuser.Name,
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(localuser.occupation),
                                    subtitle: Text(localuser.city),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => editprofile()));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          border: Border.all(
                                              width: 2,
                                              color: Colors.black26,
                                              style: BorderStyle.solid)),
                                      child: Text("Edit Profile"),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            // Row(
                            //   children: <Widget>[
                            //     Expanded(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Text("285"),
                            //           Text("Likes")
                            //         ],
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Text("3025"),
                            //           Text("Comments")
                            //         ],
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Text("650"),
                            //           Text("Favourites")
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 1, color: Colors.white),
                            image: DecorationImage(
                                image: NetworkImage(localuser.Photo),
                                fit: BoxFit.cover)),
                        margin: EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("User information"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text(localuser.Email),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone"),
                          subtitle: Text(localuser.phone),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("About"),
                          subtitle: Text(localuser.aboutus),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text(""),
                        ),
                        GestureDetector(
                          onTap: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                border: Border.all(
                                    width: 2,
                                    color: Colors.black26,
                                    style: BorderStyle.solid)),
                            child: Text("Log Out"),
                          ),
                        ),
                        ListTile(
                          title: Text(""),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }

  getCurrentUser() async {
    var user1 = FirebaseAuth.instance.currentUser;
    setState(() {
      user = user1;
    });
    final uid = user.uid;
    print(uid);
    var doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();
    print(doc.data);

    setState(() {
      localuser = userprofile.fromDocument(doc);
    });
    print(localuser.Email);
    print('this method has run');
  }
}
