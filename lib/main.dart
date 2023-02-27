import 'package:flutter/material.dart';
import 'tela_ambientes.dart';
import 'tela_inicio.dart';
import 'tela_objetos.dart';
import 'tela_configuracoes.dart';
import 'tela_perfil.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'smart places',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int _indiceAtual = 0;
  late List<Widget> _telas;

  @override
  void initState() {
    super.initState();

    _telas = [
      const TelaInicio(),
      TelaAmbientes(voltarTelaInicio),
      TelaObjetos(voltarTelaInicio),
      TelaConfiguracoes(voltarTelaInicio),
      TelaPerfil(voltarTelaInicio),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _telas[_indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 50,
            selectedFontSize: 15,
            unselectedFontSize: 15,
            currentIndex: _indiceAtual,
            onTap: onTabTapped,
            fixedColor: Colors.black,
            backgroundColor: const Color.fromARGB(255, 165, 181, 207),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Início',
              ),
              BottomNavigationBarItem(
                //icon: Icon(Icons.maps_home_work_sharp),
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
            ]));
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  void voltarTelaInicio() {
    setState(() {
      _indiceAtual = 0;
    });
  }
}
