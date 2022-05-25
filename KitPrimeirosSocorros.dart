

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KitPrimeirosSocorros extends StatefulWidget{
  @override
  State<StatefulWidget>createState(){
    return _KitPrimeirosSocorrosState();
  }
}

class _KitPrimeirosSocorrosState extends State<KitPrimeirosSocorros>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Kit Primeiros Socorros"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('O que deve conter um kit de primeiros socorros?', textAlign: TextAlign.justify,),
            Text('• Pensos rápidos de vários tamanhos;', textAlign: TextAlign.justify,),
            Text('•	Compressas esterilizadas e não esterilizadas;', textAlign: TextAlign.justify,),
            Text('•	Ligadura de gaze e elástica;', textAlign: TextAlign.justify,),
            Text('•	Fita adesiva para pensos;', textAlign: TextAlign.justify,),
            Text('•	Alfinetes de ama;', textAlign: TextAlign.justify,),
            Text('•	Tesoura sem pontas e pinça;', textAlign: TextAlign.justify,),
            Text('•	Luvas descartáveis;', textAlign: TextAlign.justify,),
            Text('•	Termómetro;', textAlign: TextAlign.justify,),
            Text('•	Toalhetes ou solução antisséptica;', textAlign: TextAlign.justify,),
            Text('•	Soro fisiológico;', textAlign: TextAlign.justify,),
            Text('•	Pequenos sacos de plástico para guardar os materiais usados e o lixo;', textAlign: TextAlign.justify,),
            Text('•	Solução para lavagem das mãos (antes e depois da prestação de cuidados);', textAlign: TextAlign.justify,),
            Text('•	Medicamentos analgésicos ou anti-inflamatórios orais, de venda livre, como paracetamol e/ou ibuprofeno, em dosagem adequada para os escalões etários dos membros da família;', textAlign: TextAlign.justify,),
            Text('•	Pomadas para queimaduras e para picadas de insetos;', textAlign: TextAlign.justify,),
            Text('•	Manual de primeiros socorros;', textAlign: TextAlign.justify,),
            Text('•	Na época em que vivemos o kit de primeiros socorros também deverá incluir máscaras de proteção.', textAlign: TextAlign.justify,),

            Container(
              margin: EdgeInsets.all(10),
              child: Image.asset('images/kps.jpg'),
            ),
          ],
        ),

      ),
    );
  }
}