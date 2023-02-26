import 'package:flutter/material.dart';

class TelaObjeto extends StatelessWidget {
  const TelaObjeto({super.key});

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
            ])
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(15, 15, 25, 0),
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  const Text('Objeto',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 35)),
                ],
              ),
            ),
            
            Center(
              child: Container(
                alignment: Alignment.topLeft,
                color: const Color.fromARGB(255, 255, 255, 255),
                width: 260,
                height: 250,
                child: Column(
                  children: [
                    const Center(
                      child: Text(
                        "Identificação", // assim não da kkkk mas ta ruim de alinhar
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        "Mac:", // assim não da kkkk mas ta ruim de alinhar
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
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
                      width: 120,
                      height: 120,
                      child: const Text(
                        "CIMA ESQ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(7, 14, 0, 0),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 120,
                      height: 120,
                      child: const Text(
                        "CIMA DIR",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
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
                      width: 120,
                      height: 120,
                      child: const Text(
                        "BAIXO ESQ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.fromLTRB(7, 14, 0, 0),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 120,
                      height: 120,
                      child: const Text(
                        "BAIXO DIR",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
