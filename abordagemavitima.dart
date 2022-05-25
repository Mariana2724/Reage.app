import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NaoRespira extends StatefulWidget {
  NaoRespira() : super();

  final String title = "Video Demo";

  @override
  NaoRespiraState createState() => NaoRespiraState();
}

class NaoRespiraState extends State<NaoRespira> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '15A6VMmjKNw',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abordagem à vítima que não respira"),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
        ],
      ),
    );

  }
}