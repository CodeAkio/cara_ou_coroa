import 'package:flutter/material.dart';

class ResultadoPage extends StatefulWidget {
  final String valor;

  const ResultadoPage({Key? key, required this.valor}) : super(key: key);

  @override
  _ResultadoPageState createState() => _ResultadoPageState();
}

class _ResultadoPageState extends State<ResultadoPage> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;

    if(widget.valor == "cara") {
      caminhoImagem = "assets/images/moeda_cara.png";
    } else {
      caminhoImagem = "assets/images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61BD86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("assets/images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
