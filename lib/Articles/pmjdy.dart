import 'package:flutter/material.dart';

class pmjdy extends StatefulWidget {
  @override
  _pmjdyState createState() => _pmjdyState();
}

class _pmjdyState extends State<pmjdy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Pradhan Mantri jan Dhan Yojana',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
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
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Pradhan Mantri Jan-Dhan Yojana (PMJDY) is National Mission for Financial Inclusion to ensure access to financial services, namely, a basic savings & deposit accounts, remittance, credit, insurance, pension in an affordable manner. Under the scheme, a basic savings bank deposit (BSBD) account can be opened in any bank branch or Business Correspondent (Bank Mitra) outlet, by persons not having any other account.',
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
