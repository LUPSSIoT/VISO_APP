import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // para fazer a barra de navegaçao
import 'telaAmbientes.dart';
import 'telaInicial.dart';
import 'telaObjetos.dart';
// import 'telaObjetos.dart';
// import 'telaRestricoes..dart';
// import 'telaHabilidades.dart';
import 'telaConfiguracao.dart';
import 'telaPerfil.dart';

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
  late int _indiceAtual = 1;
  bool status = true;
  late List<Widget> _telas;

  @override
  void initState() {
    _indiceAtual = 0;
    _telas = [
      const telInicio(),
      const telAmbientes(),
      const telObjs(),
      const telConfig(),
      const telPerf(),
    ];
    super.initState();

    // tela inicial ///////
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: _indiceAtual,
          onTap: onTabTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Ambientes",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Objetos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Configurações",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Perfil",
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return SafeArea(
                top: false,
                bottom: false,
                child: CupertinoApp(
                  home: CupertinoPageScaffold(
                    resizeToAvoidBottomInset: false,
                    child: _telas[_indiceAtual],
                  ),
                ),
              );
            },
          );
        });
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
