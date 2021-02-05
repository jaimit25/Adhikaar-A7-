import 'package:Adhikaar/screens/Navigator.dart';
import 'package:flutter/material.dart';
import 'style.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
            height: 120,
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
                  _labelText('Email:'),
                  _inputTextField('example@email.com', false),
                  SizedBox(height: 16),
                  _labelText('Password:'),
                  _inputTextField('******', true),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {
                        //TODO
                      },
                      child: Container(
                        height: 46,
                        width: 160,
                        child: RaisedButton(
                          onPressed: () {
                            //TODO
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
                      //     MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Container(
                      color: Colors.grey[50],
                      padding: EdgeInsets.only(bottom: 16),
                      height: 60,
                      child: Center(
                        child: Text(
                          'Don\'t have an Account ? Register now',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
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
_loginSocialMediaBtn(IconData icon, Color bgColor) {
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
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Login\nNow',
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
}
