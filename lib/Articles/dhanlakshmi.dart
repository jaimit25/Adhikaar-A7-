import 'package:flutter/material.dart';

class dhanlakshmi extends StatefulWidget {
  @override
  _dhanlakshmiState createState() => _dhanlakshmiState();
}

class _dhanlakshmiState extends State<dhanlakshmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Dhan Lakshmi Yojana',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 10),
              child: SizedBox(
                child: Image.asset("assets/images/dhan.jpg"),
                height: 130,
                width: double.infinity,
                // child: Image.network(
                //   "https://i.ibb.co/QdQ3CQK/undraw-wishes-icyp.png",
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'The Dhanalakshmi scheme mainly focuses to minimise female infanticide cases in India by means of providing an insurance cover. The scheme also supports education for girl child and offers alluring insurance schemes to prevent early marriage.In a bid to reduce the amount of female infanticide cases in the country, offer insurance and an education incentive, the government along with the Women and Child Development Organization in India launched the Dhanalakshmi scheme. Though the scheme is now done away with as a result of more attractive schemes introduced by the government over the years, it did bring many things into perspective - with regard to girl children. The scheme was backed by the government and introduced by Renuka Chowdhury, the then Minister of the Women and Child Development Organization. In a short span, it received more than 5,000 applicants in 11 backward states in India. The scheme’s primary focus was to reduce the amount of female infanticide cases - which is still at an alarming rate in most states in the country. The scheme also aimed at doing away with child marriage by offering parents an attractive insurance cover, and encouraging parents to educate their children as well as covering certain medical expenses for girl babies. The aim of the scheme was to value the life of a girl child and not treat them as a liability.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            )
          ],
        ));
  }
}
