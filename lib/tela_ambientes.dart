import 'package:flutter/material.dart';
import 'main.dart';

class TelaAmbientes extends StatelessWidget {
  const TelaAmbientes({super.key});

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
            ])
        ),
        alignment: Alignment.topRight,
        child: Container(
          margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
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
      ),
    );
  }
}
