import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SuporteBasico extends StatefulWidget {
  SuporteBasico() : super();

  final String title = "Video Demo";

  @override
  SuporteBasicoState createState() => SuporteBasicoState();
}

class SuporteBasicoState extends State<SuporteBasico> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'lnu7UJpf5q4',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Suporte básico de vida"),
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