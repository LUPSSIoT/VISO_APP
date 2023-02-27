import 'package:flutter/material.dart';
import 'tela.dart';

class TelaClasseDoObjeto extends StatelessWidget {
  const TelaClasseDoObjeto({super.key});

  @override
  Widget build(BuildContext context) {
    return Tela(
      "Classe do Objeto",
      () {Navigator.pop(context);},
      Container()
    );
  }
}