import 'package:flutter/material.dart';
//import 'telaObjetos.dart';
import '/telaRestricoes.dart';

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
  int indiceAtual = 1;
  bool status = true;
  late final List<Widget> _telas;

  @override
  void initState() {
    super.initState();

    _telas = [
      //tela ambientes
      Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
        alignment: Alignment.topRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  indiceAtual = 4;
                });
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            const Text('Ambientes',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ],
        ),
      ),

      //tela objetos
      Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      indiceAtual = 4;
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text('Objetos',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),

          //tela objeto
          //const BoxThatContainsText(),

          ListBody(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              ),
              MaterialButton(
                height: 80,
                minWidth: 400,
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Objeto 1',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 20)),
                      Text('- Fabricante: LG',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Color.fromARGB(255, 177, 177, 177),
                              fontSize: 10)),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 400,
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Objeto 2',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 20)),
                      Text('- Fabricante: SAMSUNG',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Color.fromARGB(255, 177, 177, 177),
                              fontSize: 10)),
                    ],
                  ),
                ),
              ),
              MaterialButton(
                height: 80,
                minWidth: 400,
                onPressed: () {},
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Objeto 3',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontSize: 20)),
                      Text('- Fabricante: Motorola',
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              color: Color.fromARGB(255, 177, 177, 177),
                              fontSize: 10)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      //tela configurações
      Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      indiceAtual = 4;
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text('Configurações',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 95, 131, 197),
                  border: Border.all(
                    color: const Color.fromARGB(255, 45, 69, 128),
                    width: 1.5,
                  )),
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(2),
                    child: Text('Objetos',
                        style: TextStyle(
                            color: Color.fromARGB(255, 173, 173, 173),
                            fontSize: 25)),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Column(
                      children: [
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Ativos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Inativos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Banidos',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 400,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Qualificados',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 400,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Círculos Sociais',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 400,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Regras de Negócio',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Icon(Icons.arrow_forward_ios, color: Colors.white),
                      ],
                    ),
                  ),
                ],
              )),
        ]),
      ),

      //tela perfil
      Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
        alignment: Alignment.topRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  indiceAtual = 4;
                });
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            const Text('Perfil',
                style: TextStyle(
                    fontFamily: 'Raleway', color: Colors.white, fontSize: 35)),
          ],
        ),
      ),

      //tela inicio
      Center(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(
                  'assets/images/iotpb.png',
                  fit: BoxFit.scaleDown,
                  height: 250,
                  colorBlendMode: BlendMode.modulate,
                  color:
                      const Color.fromARGB(255, 187, 204, 255).withOpacity(0.9),
                  opacity: const AlwaysStoppedAnimation(.8),
                ),
                const Text('smart places',
                    style: TextStyle(color: Colors.white, fontSize: 55)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 75,
              width: 240,
              child: FloatingActionButton.extended(
                onPressed: () {
                  setState(() {
                    indiceAtual = 5;
                  });
                },
                label: const Text('Rastrear Objeto',
                    style: TextStyle(fontSize: 25)),
                backgroundColor: const Color.fromARGB(255, 236, 85, 135),
                elevation: 10.0,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
                'Por favor, certifique-se que o\nnovo objeto esteja conectado a\nmesma rede deste dispositivo.',
                style: TextStyle(
                    color: Color.fromARGB(139, 165, 181, 207), fontSize: 20),
                textAlign: TextAlign.center),
          ),
        ]),
      ),

      //tela rastrearobj
      Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      indiceAtual = 4;
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text('Novo Objeto',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 95, 131, 197),
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 69, 128),
                  width: 1.5,
                )),
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  //padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
                  height: 50,
                  minWidth: 400,
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Classe do Objeto',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
                MaterialButton(
                  //padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                  height: 50,
                  minWidth: 400,
                  onPressed: () {
                    setState(() {
                      indiceAtual = 6;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Habilidades',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 400,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const restricoes()),
                    );
                    // setState(() {
                    //   indiceAtual = 7;
                    // });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Restrições',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 150,
            child: FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('Salvar', style: TextStyle(fontSize: 25)),
              backgroundColor: const Color.fromARGB(255, 236, 85, 135),
              elevation: 10.0,
            ),
          ),
        ],
      ),

      //tela habilidades
      Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
            alignment: Alignment.topRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      indiceAtual = 5;
                    });
                  },
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                const Text('Habilidades',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35)),
              ],
            ),
          ),
          ListBody(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Data',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('- Fornece a data corrente [dd/mm/aaaa]',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Color.fromARGB(255, 177, 177, 177),
                                fontSize: 10)),
                        Switch(
                            activeColor: const Color.fromARGB(255, 59, 232, 65),
                            value: status,
                            onChanged: (value) {
                              setState(() {
                                status = value;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hora',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('- Fornece o horário atualizado [hh:mm:ss]',
                            style: TextStyle(
                                fontFamily: 'Raleway',
                                color: Color.fromARGB(255, 177, 177, 177),
                                fontSize: 10)),
                        Switch(
                            activeColor: const Color.fromARGB(255, 59, 232, 65),
                            value: status,
                            onChanged: (value) {
                              setState(() {
                                status = value;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      //tela restrições
      // Column(
      //   children: [
      //     Container(
      //       margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
      //       alignment: Alignment.topRight,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           IconButton(
      //             onPressed: () {
      //               // setState(() {
      //               //   indiceAtual = 5;
      //               // });
      //               // const restricoes();
      //             },
      //             icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      //           ),
      //           const Text('Restrições',
      //               style: TextStyle(
      //                   fontFamily: 'Raleway',
      //                   color: Colors.white,
      //                   fontSize: 35)),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    ];
  }

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
          child: _telas[indiceAtual]),
      bottomNavigationBar: (indiceAtual < 4)
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 50,
              selectedFontSize: 15,
              unselectedFontSize: 15,
              currentIndex: indiceAtual,
              onTap: onTabTapped,
              fixedColor: Colors.black,
              backgroundColor: const Color.fromARGB(255, 165, 181, 207),
              items: const [
                  BottomNavigationBarItem(
                    //icon: Icon(Icons.maps_home_work_sharp),
                    //icon: Icon(Icons.home),
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
                ])
          : ((indiceAtual == 4)
              ? BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  iconSize: 50,
                  selectedFontSize: 15,
                  unselectedFontSize: 15,
                  onTap: onTabTapped,
                  fixedColor:
                      const Color.fromARGB(255, 62, 62, 80).withOpacity(0.85),
                  backgroundColor: const Color.fromARGB(255, 165, 181, 207),
                  items: const [
                      BottomNavigationBarItem(
                        //icon: Icon(Icons.maps_home_work_sharp),
                        //icon: Icon(Icons.home),
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
                    ])
              : null),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      indiceAtual = index;
    });
  }
}
