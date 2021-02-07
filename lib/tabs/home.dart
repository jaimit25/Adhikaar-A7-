import 'package:Adhikaar/Articles/baalika.dart';
import 'package:Adhikaar/Articles/bbbp.dart';
import 'package:Adhikaar/Articles/dhanlakshmi.dart';
import 'package:Adhikaar/Articles/pmjdy.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List<Widget> imageSliders = [
    'https://assets.telegraphindia.com/telegraph/07b3a268-5d6b-4250-9fc9-7ae15ecd536e.jpg',
    'https://www.europarl.europa.eu/resources/library/images/20200225PHT73309/20200225PHT73309-cl.jpg',
    'https://thelogicalindian.com/h-upload/2020/01/27/152340-10-1.jpg',
    'https://i.pinimg.com/originals/f6/8f/50/f68f5060eee6fddb15761901c4e48947.jpg',
    'https://s3.amazonaws.com/spectrumnews-web-assets/wp-content/uploads/2018/08/22102758/20180827-ChildrenIndia-844.jpg',
    'https://www.thoughtco.com/thmb/FbEXn4OLxXdsPGIddf15uOAUDWo=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/gender-equality-165793283x-56aa236b3df78cf772ac8752.jpg'
  ]
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(2.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              // Positioned(
              //   bottom: 0.0,
              //   left: 0.0,
              //   right: 0.0,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       gradient: LinearGradient(
              //         colors: [
              //           Color.fromARGB(200, 0, 0, 0),
              //           Color.fromARGB(0, 0, 0, 0)
              //         ],
              //         begin: Alignment.bottomCenter,
              //         end: Alignment.topCenter,
              //       ),
              //     ),
              //     padding: EdgeInsets.symmetric(
              //         vertical: 10.0, horizontal: 20.0),
              //     child: Text(
              //       'No. ${1} image',
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 20.0,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          )),
    ),
  ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Adhikaar',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Slider(),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 20,
            ),
            child: Text(
              'Government Yojanas',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => pmjdy()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/pmjdy.png"),
                              height: 130,
                              width: double.infinity,
                              // child: Image.network(
                              //   "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: 150,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.grey[300],
                              Colors.grey[200]
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
                            MaterialPageRoute(builder: (context) => bbbp()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/bbbp.png"),
                              height: 130,
                              width: double.infinity,
                              // child: Image.network(
                              //   "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.grey[300],
                              Colors.grey[200]
                            ],
                          ),
                          // border: Border.all(
                          // )
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => baalika()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/balika.jpg"),
                              height: 130,
                              width: double.infinity,
                              // child: Image.network(
                              //   "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.grey[300],
                              Colors.grey[200]
                            ],
                          ),
                          // border: Border.all(
                          // )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => dhanlakshmi()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Image.asset("assets/images/dhan.jpg"),
                              height: 130,
                              width: double.infinity,
                              // child: Image.network(
                              //   "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: new LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomRight,
                            colors: [
                              // Color.fromARGB(255, 25, 178, 238),
                              Colors.grey[300],
                              Colors.grey[200]
                            ],
                          ),
                          // border: Border.all(
                          // )
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 20,
              left: 20,
            ),
            child: Text(
              'Helpline Numbers',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 20),

            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.phone, size: 30),
                  ),
                  Container(
                    child: Text(
                      'Child line: 1098',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(Icons.phone, size: 30),
                  ),
                  Container(
                    child: Text(
                      'Womens Helpline Number: 181',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ]),

            height: 100,

            width: MediaQuery.of(context).size.width,
            // child: Image.network(
            //   "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
            //   fit: BoxFit.cover,
            // ),
          ),
        ],
      ),
    );
  }

  Widget Slider() {
    return Container(
      decoration:
      BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}
