import 'package:flutter/material.dart';
import 'tela.dart';

class TelaObjeto extends StatefulWidget {
  final String nomeObjeto, fabricante;

  const TelaObjeto(this.nomeObjeto, this.fabricante, {super.key});

  @override
  State<TelaObjeto> createState() => _TelaObjetoState();
}

class _TelaObjetoState extends State<TelaObjeto> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Tela(
      widget.nomeObjeto,
      () {Navigator.pop(context);},
      Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 45, 69, 128),
                  width: 1.5,
                )),
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              width: 350,
              height: 250,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: const Text(
                      "Identificação",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 91, 129, 200),
                        fontSize: 25)
                    ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                    child: const Text(
                      "- MAC Wi-Fi\n\n- Fabricante\n\n- Nome\n\n- Proprietário\n\n- Classe",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 91, 129, 200),
                        fontSize: 16)
                    ),
                  ),
                ],
              ),
            ),
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 14, 7, 0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 165,
                    height: 120,
                    child: Column(
                      children: [
                        const Text(
                          "Status",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Color.fromARGB(255, 91, 129, 200),
                            fontSize: 25)
                        ),

                        Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            (status) ? "ATIVO" : "INATIVO",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 236, 85, 135),
                              fontSize: 20)
                          ),
                        ),

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
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(7, 14, 0, 0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 165,
                    height: 120,
                    child: const Text(
                      "Confiança",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 91, 129, 200),
                        fontSize: 25)
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 14, 7, 0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 165,
                    height: 120,
                    child: const Text(
                      "Rede",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 91, 129, 200),
                        fontSize: 25)
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(7, 14, 0, 0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    width: 165,
                    height: 120,
                    child: const Text(
                      "Sinal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Color.fromARGB(255, 91, 129, 200),
                        fontSize: 25)
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
