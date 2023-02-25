// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'telaHabilidades.dart';
import 'telaRestricoes..dart';

class telRast extends StatelessWidget {
  const telRast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text('Novo Objeto',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 95, 131, 197),
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 69, 128),
                  width: 1.5,
                )),
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  //padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
                  height: 50,
                  minWidth: 400,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Classe do Objeto',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
                MaterialButton(
                  //padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                  height: 50,
                  minWidth: 400,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const habilidades()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Habilidades',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 400,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const restricoes()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Restrições',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('Salvar', style: TextStyle(fontSize: 25)),
              backgroundColor: const Color.fromARGB(255, 236, 85, 135),
              elevation: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
