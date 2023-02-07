// ignore_for_file: file_names, camel_case_types

///// NAO FUNCIONA AINDA NAO TA FAZENDO NADA POR ENQUANTO

import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  const inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/iotpb.png',
                fit: BoxFit.scaleDown,
                height: 250,
                colorBlendMode: BlendMode.modulate,
                color:
                    const Color.fromARGB(255, 187, 204, 255).withOpacity(0.9),
                opacity: const AlwaysStoppedAnimation(.8),
              ),
              const Text('smart places',
                  style: TextStyle(color: Colors.white, fontSize: 55)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: 75,
            width: 240,
            child: FloatingActionButton.extended(
              onPressed: () {
                // setState(() {
                //   indiceAtual = 5;    //arruma isso!!!!
                // });
              },
              label:
                  const Text('Rastrear Objeto', style: TextStyle(fontSize: 25)),
              backgroundColor: const Color.fromARGB(255, 236, 85, 135),
              elevation: 10.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
              'Por favor, certifique-se que o\nnovo objeto esteja conectado a\nmesma rede deste dispositivo.',
              style: TextStyle(
                  color: Color.fromARGB(139, 165, 181, 207), fontSize: 20),
              textAlign: TextAlign.center),
        ),
      ]),
    );
  }
}
