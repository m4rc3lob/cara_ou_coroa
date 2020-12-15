import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  @override

  String valor;
  Resultado (this.valor){}

  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImage;
    if( widget.valor == "coroa"){
      caminhoImage = "images/moeda_coroa.png";
    } else {
      caminhoImage = "images/moeda_cara.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(caminhoImage),
            GestureDetector(
              onTap: (){ Navigator.pop(context); },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
