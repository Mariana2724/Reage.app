import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Desmaio extends StatefulWidget {
  Desmaio() : super();

  final String title = "Video Demo";

  @override
  DesmaioState createState() => DesmaioState();
}

class DesmaioState extends State<Desmaio> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'M-6Hxnd3uBM',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Desmaio"),
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