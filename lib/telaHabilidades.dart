// ignore_for_file: camel_case_types, implementation_imports, file_names

import 'package:flutter/material.dart';
import 'package:teste/main.dart';

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
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 91, 129, 200),
              Color.fromARGB(255, 45, 69, 128)
            ])),
        alignment: Alignment.topRight,
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
