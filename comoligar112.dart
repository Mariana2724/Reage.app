

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ComoLigar extends StatefulWidget {
  ComoLigar() : super();

  final String title = "Video Demo";

  @override
  ComoLigarState createState() => ComoLigarState();
}

class ComoLigarState extends State<ComoLigar> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'eyqxcqxniJY',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Como Ligar para o 112"),
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