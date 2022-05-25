
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Obstrucao extends StatefulWidget {
  Obstrucao() : super();

  final String title = "Video Demo";

  @override
  ObstrucaoState createState() => ObstrucaoState();
}

class ObstrucaoState extends State<Obstrucao> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'IGfBF--vQ80',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Obstrução da via aéra- adulto"),
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