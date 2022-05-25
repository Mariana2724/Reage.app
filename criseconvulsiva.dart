import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Convulsao extends StatefulWidget {
  Convulsao() : super();

  final String title = "Video Demo";

  @override
  ConvulsaoState createState() => ConvulsaoState();
}

class ConvulsaoState extends State<Convulsao> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'xI-g2vsE4uo',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crise convulsiva"),
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