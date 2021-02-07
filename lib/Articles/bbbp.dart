import 'package:flutter/material.dart';

class bbbp extends StatefulWidget {
  @override
  _bbbpState createState() => _bbbpState();
}

class _bbbpState extends State<bbbp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Beti Bachao  Beti Padhao Yojana',
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
              child: Image.asset("assets/images/bbbp.png"),
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
                'The Census, 2011 has shown significant declining trend in Child Sex Ratio (CSR), with 918 girls per 1000 boys in the age group of 0-6 years. The unabated decline in CSR since 1961 (from 976 in 1961 to 927 in 2001 and 918 in 2011) is a matter of grave concern as it reflects the low status of women in our society and indicates her disempowerment over a life-cycle continuum. Declining CSR is also indicative of pre-birth discrimination manifested through gender biased sex selection and post birth discrimination against girls (in terms of health care, nutrition and educational opportunities\)\.In this scenario, Beti Bachao, Beti Padhao (BBBP) was launched by the Hon’ble Prime Minister, Shri Narendra Modi, as one of the flagship programmes of the Government, to address the declining Child Sex Ratio and related issues of empowerment of women on a life-cycle continuum. It is a tri-ministerial, convergent effort of Ministries of Women and Child Development, Health & Family Welfare and Human Resource Development with a focus on awareness and advocacy campaign for changing mindsets, multi-sectoral action in selected 100 distrixts (Ist Phase) +61 districts (IInd Phase) (low on CSR), enabling girls',
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
