// ignore_for_file: camel_case_types, implementation_imports, file_names

import 'package:flutter/material.dart';

class habilidades extends StatefulWidget {
  const habilidades({super.key});

  @override
  State<habilidades> createState() => _habilidadesState();
}

class _habilidadesState extends State<habilidades> {
  bool status = true;
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
                const Text('Habilidades',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),
          ListBody(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Data',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('- Fornece a data corrente [dd/mm/aaaa]',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Color.fromARGB(255, 177, 177, 177),
                                fontSize: 10)),
                        Switch(
                            activeColor: const Color.fromARGB(255, 59, 232, 65),
                            value: status,
                            onChanged: (value) {
                              setState(() {
                                status = value;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hora',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('- Fornece o horário atualizado [hh:mm:ss]',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Color.fromARGB(255, 177, 177, 177),
                                fontSize: 10)),
                        Switch(
                            activeColor: const Color.fromARGB(255, 59, 232, 65),
                            value: status,
                            onChanged: (value) {
                              setState(() {
                                status = value;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
