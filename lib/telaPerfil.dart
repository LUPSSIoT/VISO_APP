// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'main.dart';

class telPerf extends StatelessWidget {
  const telPerf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            const Text('Perfil',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
