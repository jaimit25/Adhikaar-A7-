import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoViewer extends StatefulWidget {
  VideoViewer() : super();

  final String title = "Video Demo";

  @override
  VideoViewerState createState() => VideoViewerState();
}

class VideoViewerState extends State<VideoViewer> {
  //
  VideoPlayerController _controller;
  final TextEditingController _userview = TextEditingController();
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
     _controller = VideoPlayerController.network(
        "https://firebasestorage.googleapis.com/v0/b/adhikaar-d3f08.appspot.com/o/sample_video.mp4?alt=media&token=82258224-f2e0-4eea-80fa-46d1c24d0f6a");
    // _controller = VideoPlayerController.asset("media/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
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
            return
              Column(
                children: [
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
                    child:
                    Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
                  ),
                  TextField(
                    controller: _userview,
                  ),
                  GestureDetector(
                    onTap: () => print("View: ${_userview.text}"),
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Submit',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                )
                            )
                          ]
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
}
