
import 'package:Adhikaar/screens/showView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class admin extends StatefulWidget {
  @override
  _adminState createState() => _adminState();
}

class _adminState extends State<admin> {
  var db;
  var datafromdatabase;
  String datastring;
  FirebaseAuth _auth;
  User user;

  String code;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    db = FirebaseDatabase.instance.reference();
    print('this code has run');
    db.child("data").once().then((DataSnapshot data) async {
      datafromdatabase = data.value;
      datastring = datafromdatabase.toString();
      print(datafromdatabase);
      setState(() {
        // code = datafromdatabase;
        datastring = datafromdatabase;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEF5350),

      // persist create account link at the bottom of screen
      // bottomNavigationBar: _createAccountLink(context),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          _topheader(),
          Expanded(
              child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.grey[50],
            ),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 16),

                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 56,
                    decoration: raisedDecoration,
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          code = value;
                        });
                      },
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                          ),
                          hintText: 'Enter Your Code',
                          border: InputBorder.none),
                    ),
                  ),
                  // Container(
                  //   padding: EdgeInsets.only(left: 10),
                  //   height: 60,
                  //   decoration: BRoxDecoration(
                  //       border: Border.all(width: 2, color: Colors.black),
                  //       borderRadius: BorderRadius.all(Radius.circular(5))),
                  //   margin: EdgeInsets.only(top: 80, left: 10, right: 10),
                  //   child: TextField(
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 18,
                  //     ),
                  //     decoration: InputDecoration(
                  //         hintStyle: TextStyle(
                  //           color: Colors.black,
                  //           fontSize: 18,
                  //         ),
                  //         hintText: 'Enter Your Gmail',
                  //         border: InputBorder.none),
                  //     onChanged: (value) {
                  //       email = value;
                  //     },
                  //   ),
                  // ),

                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        //TOif(DO
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 46,
                        width: 160,
                        child: RaisedButton(
                          onPressed: () {
                            if (code == datastring) {
                              Navigator.of(context).pop();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ShowView()));
                            } else {
                              print('error');
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          color: Color(0xFFEF5350),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => admin()));
                    },
                    child: Container(
                      color: Colors.grey[50],
                      padding: EdgeInsets.only(bottom: 16),
                      height: 60,
                      child: Center(
                          // child: Text(
                          //   'Don\'t have an Account ? Register now',
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w700,
                          //     color: Colors.black,
                          //     fontSize: 16,
                          //   ),
                          // ),
                          ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 12),
                  SizedBox(height: 18),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[]),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}

// _createAccountLink() {
//   return GestureDetector(
//     onTap: () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
//     },
//     child: Container(
//       color: Colors.grey[50],
//       padding: EdgeInsets.only(bottom: 16),
//       height: 60,
//       child: Center(
//         child: Text(
//           'Don\'t have an Account ? Register now',
//           style: TextStyle(
//             fontWeight: FontWeight.w700,
//             color: Colors.black,
//             fontSize: 16,
//           ),
//         ),
//       ),
//     ),
//   );
//}

//button to login in using scial media,
// ignore: unused_element
_adminSocialMediaBtn(IconData icon, Color bgColor) {
  return SizedBox.fromSize(
    size: Size(54, 54), //button width and height
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Material(
        elevation: 16,
        shadowColor: Colors.black,
        color: bgColor,
        child: InkWell(
          splashColor: Colors.white12,
          onTap: () {},
          child: Center(
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
      ),
    ),
  );
}

_inputTextField(hintText, bool obscuretext) {
  return Container(
    height: 56,
    padding: EdgeInsets.fromLTRB(16, 3, 16, 6),
    margin: EdgeInsets.all(8),
    decoration: raisedDecoration,
    child: Center(
      child: TextField(
        obscureText: obscuretext,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black38,
            )),
      ),
    ),
  );
}

_labelText(title) {
  return Padding(
    padding: EdgeInsets.only(left: 24),
    child: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontSize: 16,
      ),
    ),
  );
}

_topheader() {
  return Padding(
    padding: EdgeInsets.only(left: 32),
    child: Container(
        child: Image.asset(
      'assets/images/logowhite.png',
      height: 300,
      fit: BoxFit.fitHeight,
    )),
  );
}
