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
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int indiceAtual = 0;

  final List<Widget> _telas = [
    //tela inicio
    Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset('assets/images/iotpb.png', fit: BoxFit.scaleDown, height: 250, colorBlendMode: BlendMode.modulate, color: const Color.fromARGB(255, 187, 204, 255).withOpacity(0.9), opacity: const AlwaysStoppedAnimation(.8),),
                const Text('smart places', style: TextStyle(color: Colors.white, fontSize: 55)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 75,
              width: 240,
              child: FloatingActionButton.extended(
                onPressed: (){
                  //tela rastrearobj
                },
                label: const Text('Rastrear Objeto', style: TextStyle(fontSize: 25)),
                backgroundColor: const Color.fromARGB(255, 236, 85, 135),
                elevation: 10.0,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Por favor, certifique-se que o\nnovo objeto esteja conectado a\nmesma rede deste dispositivo.', style: TextStyle(color: Color.fromARGB(139, 165, 181, 207), fontSize: 20), textAlign: TextAlign.center),
          ),
        ]
      ),
    ),

    //tela ambientes
    Center(
      child: Column(
        children: const [
          SizedBox(height: 15),
          
          Align(
            alignment: Alignment.topRight,
            child: Text('Ambientes    ', style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ),
        ],
      ),
    ),

    //tela objetos
    Center(
      child: Column(
        children: const [
          SizedBox(height: 15),
          
          Align(
            alignment: Alignment.topRight,
            child: Text('Objetos    ', style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ),
        ],
      ),
    ),
    
    //tela configurações
    Center(
      child: Column(
        children: [
          const SizedBox(height: 15),
          
          const Align(
            alignment: Alignment.topRight,
            child: Text('Configurações    ', style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
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
                    body: 
                    
                    ExpansionPanelList(
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
        ]
      ),
    ),

    //tela perfil
    Center(
      child: Column(
        children: const [
          SizedBox(height: 15),
          
          Align(
            alignment: Alignment.topRight,
            child: Text('Perfil    ', style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (indiceAtual == 0) ? null : null,

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 91, 129, 200), 
              Color.fromARGB(255, 45, 69, 128)
            ]
          )  
        ),
        child: _telas[indiceAtual]
      ),
      
      bottomNavigationBar: (indiceAtual < 5) ? BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        iconSize: 50,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: indiceAtual,
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
        ]
      ) : null,
    );
  }

  void onTabTapped(int index) {
    setState(() {
      indiceAtual = index;
    });
  }
}
