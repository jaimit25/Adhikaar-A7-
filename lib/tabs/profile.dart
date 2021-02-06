import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJm0gAXunXcm3HezBOW5XyULCkkdCxQ95_XA&usqp=CAU",
                fit: BoxFit.cover,
              ),
              // Image.asset("assets/images/children.jpg"),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Jenny",
                                    style: Theme.of(context).textTheme.title,
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("Product Designer"),
                                    subtitle: Text("Mumbai"),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(height: 10.0),
                            // Row(
                            //   children: <Widget>[
                            //     Expanded(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Text("285"),
                            //           Text("Likes")
                            //         ],
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Text("3025"),
                            //           Text("Comments")
                            //         ],
                            //       ),
                            //     ),
                            //     Expanded(
                            //       child: Column(
                            //         children: <Widget>[
                            //           Text("650"),
                            //           Text("Favourites")
                            //         ],
                            //       ),
                            //     ),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(width: 1, color: Colors.white),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJm0gAXunXcm3HezBOW5XyULCkkdCxQ95_XA&usqp=CAU"),
                                fit: BoxFit.cover)),
                        margin: EdgeInsets.only(left: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("User information"),
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text("jenny12@gmail.com"),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Phone"),
                          subtitle: Text("+91 8723450109"),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("About"),
                          subtitle: Text(
                              "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text(""),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}
