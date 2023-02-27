import 'package:flutter/material.dart';

class Tela extends StatelessWidget {
  final String nomeTela;
  final void Function() voltar;
  final Widget filho;

  const Tela(this.nomeTela, this.voltar, this.filho, {super.key});

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
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: voltar,
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Text(nomeTela,
                      style: const TextStyle(
                          fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
                ],
              ),
            ),

            filho
          ],
        ),
      ),
    );
  }
}