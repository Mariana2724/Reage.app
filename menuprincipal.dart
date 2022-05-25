
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scr/videosexplicativos/criseconvulsiva.dart';
import 'package:scr/videosexplicativos/desmaio.dart';
import 'package:scr/videosexplicativos/suportebasicodevida.dart';
import '../videosexplicativos/abordagemavitima.dart';
import '../videosexplicativos/comoligar112.dart';
import '../videosexplicativos/hemorragia.dart';
import '../videosexplicativos/obstruçãoviaaerea.dart';



class MenuPrincipal extends StatefulWidget{

  @override
  State<StatefulWidget>createState(){
    return _MenuPrincipalState();
  }
}

class _MenuPrincipalState extends State<MenuPrincipal> {


  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home_outlined),
            SizedBox(width: 10),
            Text('Vídeos explicativos')
          ],),
      ),
      body: SafeArea(
        child : SingleChildScrollView(
          padding: EdgeInsets.only(left: 24, right: 24, top: 14),
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/ligar.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ComoLigar()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Como ligar para o 112', style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/SUPORTE BÁSICO DE VIDA.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SuporteBasico()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Suporte básico de vida', style: TextStyle(fontWeight: FontWeight.bold), )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/ABORDAGEM À VÍTIMA QUE NÃO RESPIRA.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => NaoRespira()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Abordagem à vítima que não respira', style: TextStyle(fontWeight: FontWeight.bold), )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/DESMAIO.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Desmaio()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Desmaio', style: TextStyle(fontWeight: FontWeight.bold), )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/CONTROLO DE HEMORRAGIA EXTERNA.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Hemorragia()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Controlo de hemorragia externa', style: TextStyle(fontWeight: FontWeight.bold), )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/CRISE CONVULSIVA.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Convulsao()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Crise convulsiva', style: TextStyle(fontWeight: FontWeight.bold), )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.asset('images/OBSTRUÇÃO DA VIA ÁEREA ADULTO.png'),
                  ),
                  Positioned(
                    top: 7,
                    bottom: 10,
                    right: 7,
                    left: 12,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Obstrucao()));
                        },
                        child: Icon(Icons.play_arrow, size: 40,) ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Text('Obstrução da via aérea', style: TextStyle(fontWeight: FontWeight.bold), )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}