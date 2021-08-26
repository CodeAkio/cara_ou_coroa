import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cara_ou_coroa/modules/resultado/resultado_page.dart';

class JogarPage extends StatefulWidget {
  const JogarPage({Key? key}) : super(key: key);

  @override
  _JogarPageState createState() => _JogarPageState();
}

class _JogarPageState extends State<JogarPage> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ResultadoPage(valor: resultado)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61BD86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("assets/images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
