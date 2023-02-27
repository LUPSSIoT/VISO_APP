import 'package:flutter/material.dart';
import 'tela.dart';

class TelaPerfil extends StatelessWidget {
  final void Function() voltarTelaInicio;
  
  const TelaPerfil(this.voltarTelaInicio, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tela(
      "Perfil", 
      voltarTelaInicio,
      Container()
    );
  }
}
