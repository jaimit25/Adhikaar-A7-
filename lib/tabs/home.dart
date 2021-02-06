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

<<<<<<< HEAD
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

=======
>>>>>>> f736c575d0c2e0b01be6028fce734d4b53f91d46
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
        ],
      ),
<<<<<<< HEAD


=======
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
>>>>>>> f736c575d0c2e0b01be6028fce734d4b53f91d46
    );
  }
}
