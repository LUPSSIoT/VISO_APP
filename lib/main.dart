import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'smart places',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    //tela ambientes
    Center(
      child: Column(children: [
        const SizedBox(height: 25),
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/iotpb.png',
              fit: BoxFit.scaleDown,
              height: 250,
              colorBlendMode: BlendMode.modulate,
              color: const Color.fromARGB(255, 187, 204, 255).withOpacity(0.9),
              opacity: const AlwaysStoppedAnimation(.8),
            ),
            const Text('smart places',
                style: TextStyle(color: Colors.white, fontSize: 55)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: 75,
            width: 240,
            child: FloatingActionButton.extended(
              onPressed: () {
                //tela rastrearobj
              },
              label:
                  const Text('Rastrear Objeto', style: TextStyle(fontSize: 25)),
              backgroundColor: const Color.fromARGB(255, 236, 85, 135),
              elevation: 10.0,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: Text(
              'Por favor, certifique-se que o\ndispositivo esteja conectado\na rede de dados local.',
              style: TextStyle(
                  color: Color.fromARGB(139, 165, 181, 207), fontSize: 20),
              textAlign: TextAlign.center),
        ),
      ]),
    ),

    //tela objetos
    Center(
      child: Column(
        children: const [
          SizedBox(height: 15),
          Align(
            alignment: Alignment.topRight,
            child: Text('Objetos    ',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ),
        ],
      ),
    ),

    //tela configurações
    Center(
      child: Column(children: [
        const SizedBox(height: 15),
        const Align(
          alignment: Alignment.topRight,
          child: Text('Configurações    ',
              style: TextStyle(
                  fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            width: 400,
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {},
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Objetos'),
                    );
                  },
                  body: ExpansionPanelList(
                    expansionCallback: (int index, bool isExpanded) {},
                    children: [
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text('Ativos'),
                          );
                        },
                        body: const ListTile(
                          title: Text('Item 1 child'),
                          subtitle: Text(''),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text('Inativos'),
                          );
                        },
                        body: const ListTile(
                          title: Text('Item 2 child'),
                          subtitle: Text(''),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text('Banidos'),
                          );
                        },
                        body: const ListTile(
                          title: Text('Item 3 child'),
                          subtitle: Text(''),
                        ),
                        isExpanded: false,
                      ),
                      ExpansionPanel(
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return const ListTile(
                            title: Text('Qualificados'),
                          );
                        },
                        body: const ListTile(
                          title: Text('Item 4 child'),
                          subtitle: Text(''),
                        ),
                        isExpanded: false,
                      ),
                    ],
                  ),
                  isExpanded: false,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Círculos Sociais'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 2 child'),
                    subtitle: Text(''),
                  ),
                  isExpanded: false,
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Regras de Negócio'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 3 child'),
                    subtitle: Text(''),
                  ),
                  isExpanded: false,
                ),
              ],
            ),
          ),
        ),
      ]),
    ),

    //tela perfil
    Center(
      child: Column(
        children: const [
          SizedBox(height: 15),
          Align(
            alignment: Alignment.topRight,
            child: Text('Perfil    ',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ),
        ],
      ),
    ),
  ];

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
          child: _telas[_indiceAtual]),
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
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
