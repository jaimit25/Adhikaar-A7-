import 'package:Adhikaar/screens/Navigation.dart';
import 'package:Adhikaar/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoViewer extends StatefulWidget {
  VideoViewer() : super();

  final String title = "Video Demo";

  @override
  VideoViewerState createState() => VideoViewerState();
}

class VideoViewerState extends State<VideoViewer> {
  String user = FirebaseAuth.instance.currentUser.uid;
  VideoPlayerController _controller;
  DatabaseService databaseService = new DatabaseService();
  final TextEditingController _userview = TextEditingController();
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        "https://firebasestorage.googleapis.com/v0/b/adhikaar-d3f08.appspot.com/o/sample_video.mp4?alt=media&token=82258224-f2e0-4eea-80fa-46d1c24d0f6a");
    // _controller = VideoPlayerController.asset("media/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Viewer"),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                child: Icon(_controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow),
              ),
              Container(
                //height: 50,
                margin:
                EdgeInsets.only(left: 60, right: 60, top: 20, bottom: 10),
                child: TextFormField(
                  controller: _userview,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.laptop_windows,
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black38,
                        fontSize: 18,
                      ),
                      hintText: 'Your View',
                      border: InputBorder.none),
                ),
              ),
              GestureDetector(
                onTap: () {
                  databaseService.addData(
                      {'View': _userview.text, 'UID': user, 'upvote': 0});
                  print("View: ${_userview.text}");
                  _controller.pause();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Navigation()));
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
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ]);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

// getvideolink() {
//   var doc =
//       FirebaseFirestore.instance.collection('VideoLink').doc("videos").get();

//   setState(() {
//     videolink = fetchvideo.fromDocument(doc);
//   });

//   print(videolink.video +
//       "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
// }
}
