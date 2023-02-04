// ignore_for_file: file_names
// por enquanto aqui só tem a caixa de texto da tela, o resto ta na main,
// no futuro colocar toda tela aqui!

import 'package:flutter/material.dart';

class BoxThatContainsText extends StatelessWidget {
  const BoxThatContainsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(45, 10, 50, 5),
          child: Container(
            alignment: Alignment.topLeft,
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 300,
            height: 250,
            //child: const Align(
            child: const Text(
              "   Identificação\n Mac: \n", // assim não da kkkk mas ta ruim de alinhar
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 155, 5),
          child: Container(
            //alignment: Alignment.topLeft,
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 145,
            height: 145,
            child: const Text(
              "CIMA ESQ",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 155, 0),
          child: Container(
            margin: const EdgeInsets.fromLTRB(45, 0, 45, 0),
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 145,
            height: 145,
            child: const Text(
              "BAIXOS ESQ",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 155, 0),
          child: Container(
            margin: const EdgeInsets.fromLTRB(145, 0, 0, 0),
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 145,
            height: 145,
            child: const Text(
              "CIMA ESQ",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
