// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';

class restricoes extends StatelessWidget {
  const restricoes({super.key});

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(14),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
            const Text('Restrições',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ],
        ),
      ),
    );
  }
}
