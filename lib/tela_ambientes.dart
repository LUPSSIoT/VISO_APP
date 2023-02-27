import 'package:flutter/material.dart';
import 'tela.dart';

class TelaAmbientes extends StatelessWidget {
  final void Function() voltarTelaInicio;
  
  const TelaAmbientes(this.voltarTelaInicio, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tela(
      "Ambientes", 
      voltarTelaInicio,
      Container()
    );
  }
}