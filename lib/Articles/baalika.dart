import 'package:flutter/material.dart';

class baalika extends StatefulWidget {
  @override
  _baalikaState createState() => _baalikaState();
}

class _baalikaState extends State<baalika> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Balika Samridhi Yojana',
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
                child: Image.asset("assets/images/balika.jpg"),
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
                'The scheme of Balika Samriddhi Yojana was launched on 2nd October 1997 with the objective of raising the overall status of the girl-child and bringing about a positive change in family and community attitudes. The scheme covers up two girls children born on or after 15th August 1997 in a family living below poverty line as defined by the Government of India.BMS is given as one time grant of Rs.500/- to mother giving birth to a girl child of B.P.L. families.Coverage of beneficiaries is 12357 girl child as till date.',
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
