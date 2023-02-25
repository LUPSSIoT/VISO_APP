// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'main.dart';

class telConfig extends StatelessWidget {
  const telConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text('Configurações',
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
                  const Padding(
                    padding: EdgeInsets.all(2),
                    child: Text('Objetos',
                        style: TextStyle(
                            color: Color.fromARGB(255, 173, 173, 173),
                            fontSize: 25)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Column(
                      children: [
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Ativos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Inativos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Banidos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Qualificados',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 400,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Círculos Sociais',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 400,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Regras de Negócio',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
