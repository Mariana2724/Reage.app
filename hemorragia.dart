
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Hemorragia extends StatefulWidget {
  Hemorragia() : super();

  final String title = "Video Demo";

  @override
  HemorragiaState createState() => HemorragiaState();
}

class HemorragiaState extends State<Hemorragia> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '9z-8YNTY7wI',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hemorragia"),
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