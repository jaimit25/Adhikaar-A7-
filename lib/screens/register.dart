// TODO Implement this library.


import 'package:Adhikaar/screens/Navigation.dart';
import 'package:Adhikaar/screens/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'style.dart';

import 'package:flutter/material.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {

  var _passwordVisible;
  String email;
  String Nameuser;
  String password;
  FirebaseAuth auth;
  User user;
  final GlobalKey<FormState> formstate = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // auth = FirebaseAuth.instance;
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEF5350),

        // persist create account link at the bottom of screen
        // bottomNavigationBar: _createAccountLink(),
        body: Form(
          key: formstate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
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
                      SizedBox(height: 40),
                      _labelText('Name:'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 56,
                        decoration: raisedDecoration,
                        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 18,
                              ),
                              hintText: 'Name',
                              border: InputBorder.none),
                          onChanged: (value) {
                            setState(() {
                              Nameuser = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 16),
                      _labelText('Email:'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 56,
                        decoration: raisedDecoration,
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: TextFormField(
                          controller: _emailController,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.black38,
                                fontSize: 18,
                              ),
                              hintText: 'Enter Your Gmail',
                              border: InputBorder.none),
                          onChanged: (value) {
                            setState(() {
                              email = value;
                            });
                          },
                          keyboardType: TextInputType.emailAddress,
                          validator: (email) => EmailValidator.validate(email)
                              ? null
                              : "Invalid Email Address",
                        ),
                      ),
                      SizedBox(height: 16),
                      _labelText('Password:'),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 56,
                        decoration: raisedDecoration,
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        child: TextFormField(
                          controller: _passwordController,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          obscureText: _passwordVisible,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                            ),
                            hintText: 'Password',
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              password = value;
                            });
                          },
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            Pattern pattern =
                                r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';

                            RegExp regex = new RegExp(pattern);
                            if (!regex.hasMatch(value)) {
                              return "Invalid Passsword";
                            } else
                              return null;
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () {
                            //TODO
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 46,
                            width: 160,
                            child: RaisedButton(
                              onPressed: () async {
                                print('you clicked Create Account button');
                                if (formstate.currentState.validate()) {
                                  print("hiiiiiiiiiiiiiii");

                                  // User user=await FirebaseAuth.instance
                                  //     .createUserWithEmailAndPassword(
                                  //         email: email, password: password)
                                  //     .user;
                                  User user = (await FirebaseAuth.instance
                                          .createUserWithEmailAndPassword(
                                              email: email, password: password))
                                      .user;
                                  print('you clicked login');
                                  FirebaseFirestore.instance
                                      .collection('/users')
                                      .doc(user.uid)
                                      .set({
                                    'uid': user.uid,
                                    'aboutus': 'Add Bio',
                                    'Name': Nameuser,
                                    'Email': email,
                                    'Password': password,
                                    'phone': 'Add Phone',
                                    'city': 'Add City',
                                    'occupation': 'Add Occupation',
                                    'Photo':
                                        'https://st2.depositphotos.com/3261171/8636/i/950/depositphotos_86365582-stock-photo-nice-girl-having-a-walk.jpg'
                                  }).then((result) {
                                    print("User Added");
                                  }).catchError((e) {
                                    print("Error: $e" + "!");
                                  });
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => Navigation()));
                                  // Navigator.of(context).pushReplacementNamed('/homepage');

                                  // Navigator.of(context).pop();
                                  // Navigator.of(context).pushNamed('/show');

                                }
                              },
                              child: Text(
                                'Register',
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
                        child: Container(
                          color: Colors.grey[50],
                          padding: EdgeInsets.only(bottom: 16),
                          height: 60,
                          child: Center(
                            child: Text(
                              'Already have an Account? Login now',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        },
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
        ));
  }

  // _createAccountLink() {
  //   return Container(
  //     color: Colors.grey[50],
  //     padding: EdgeInsets.only(bottom: 16),
  //     height: 60,
  //     child: Center(
  //       child: Text(
  //         'Already have an account ? Login Now',
  //         style: TextStyle(
  //           fontWeight: FontWeight.w700,
  //           color: Colors.black,
  //           fontSize: 16,
  //         ),
  //       ),
  //     ),
  //   );
  // }
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Create\nYour\nAccount',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
          Image.asset(
            'assets/images/logowhite.png',
            height: 230,
            fit: BoxFit.fitHeight,
          )
        ],
      ),
    );

    @override
    Widget build(BuildContext context) {
      return Scaffold();
    }
  }

  Future<void> registeraccount() async {
    // User user = (await auth.createUserWithEmailAndPassword(
    //         email: email, password: password))
    //     .user;
    // if (user != null) {
    //   if (!(user == null)) {
    //     await user.sendEmailVerification();
    //   }

    // await FirebaseFirestore.instance.collection('/users').doc(user.uid).set({
    //   'uid': user.uid,
    //   'Name': Nameuser,
    //   'Email': email,
    //   'Password': password,
    //   'Photo':
    //       'https://st2.depositphotos.com/3261171/8636/i/950/depositphotos_86365582-stock-photo-nice-girl-having-a-walk.jpg'
    // }).then((result) {
    //   print("User Added");
    // }).catchError((e) {
    //   print("Error: $e" + "!");
    // });

    // } else {
    //   print("User not registered");
    // }
  }
}
