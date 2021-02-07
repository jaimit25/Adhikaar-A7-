import 'package:Adhikaar/videoViewer.dart';
import 'package:Adhikaar/views/quiz.dart';
import 'package:flutter/material.dart';

class gamesection extends StatefulWidget {
  @override
  _gamesectionState createState() => _gamesectionState();
}

class _gamesectionState extends State<gamesection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          children: [
            // Container(
            //   child: Divider(
            //     height: 10,
            //     color: Colors.black,
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 10,
              ),
              child: Text(
                'Try Your Knowledge',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Quiz()));
                        },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 20,
                                left: 10,
                                right: 5,
                              ),
                              child: Text(
                                'Check Your Knowledge',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 19),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                right: 5,
                                left: 10,
                              ),
                              child: Text(
                                'Test your knowledge by Answering some of the hot Questions',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.purple,
                              Colors.deepPurple[200]
                            ],
                          ),
                          // border: Border.all(
                          // )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('you clicked Second box');
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 30,
                                left: 10,
                                right: 5,
                              ),
                              child: Text(
                                'Perspective Lookup',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 19),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                right: 5,
                                left: 10,
                              ),
                              child: Text(
                                'Test Your Perspective',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.red,
                              Colors.orange
                            ],
                          ),
                          // border: Border.all(
                          // )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => VideoViewer()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 30,
                                left: 10,
                                right: 5,
                              ),
                              child: Text(
                                'Brain Game',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 19),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 10,
                                right: 5,
                                left: 10,
                              ),
                              child: Text(
                                'Watch the video and test Your Knowledge',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        height: 170,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.blue[700],
                              Colors.blue[200]
                            ],
                          ),
                          // border: Border.all(
                          // )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                height: 10,
                color: Colors.black,
              ),
            ),
            Container(
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
                      'Check leaderBoards',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {
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

            Container(
              margin: EdgeInsets.only(top: 10),
              child: Divider(
                height: 10,
                color: Colors.black,
              ),
            ),
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.people, size: 40),
                ),
                Container(
                  child: Text(
                    'Top People',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ),

            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJm0gAXunXcm3HezBOW5XyULCkkdCxQ95_XA&usqp=CAU'),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text(
                      'User Name',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Divider(
                height: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
