// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BotNavBar extends StatelessWidget {
  final int indiceAtual;
  const BotNavBar({super.key, required this.indiceAtual});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 50,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: indiceAtual,
        onTap: null, //onTabTapped,
        fixedColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 165, 181, 207),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            //icon: Icon(Icons.maps_home_work_sharp),
            //icon: Icon(Icons.villa),
            icon: Icon(Icons.dashboard_sharp),
            label: 'Ambientes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub),
            label: 'Objetos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ]);
  }
}
