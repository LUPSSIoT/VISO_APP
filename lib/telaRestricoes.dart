// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';

class restricoes extends StatelessWidget {
  const restricoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 95, 131, 197),
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 69, 128),
                  width: 1.5,
                )),
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
                const Text('Restrições',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
