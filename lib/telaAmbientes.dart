// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'main.dart';

class telAmbientes extends StatelessWidget {
  const telAmbientes({super.key});

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
            const Text('Ambientes',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
