import 'package:flutter/material.dart';
import 'tela.dart';
import 'tela_classe_do_objeto.dart';
import 'tela_habilidades.dart';
import 'tela_restricoes.dart';

class TelaNovoObjeto extends StatelessWidget {
  const TelaNovoObjeto({super.key});

  @override
  Widget build(BuildContext context) {
    return Tela(
      "Novo Objeto",
      () {
        Navigator.pop(context);
      },
      Column(children: [
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
                height: 50,
                minWidth: 400,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaClasseDoObjeto()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Classe do Objeto',
                        style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 25)),
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
                        builder: (context) => const TelaHabilidades()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Habilidades',
                        style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 25)),
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
                        builder: (context) => const TelaRestricoes()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Restrições',
                        style: TextStyle(fontFamily: 'Raleway', color: Colors.white, fontSize: 25)),
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
            label: const Text('Salvar', style: TextStyle(fontFamily: 'Raleway', fontSize: 25)),
            backgroundColor: const Color.fromARGB(255, 236, 85, 135),
            elevation: 10.0,
          ),
        ),
      ]),
    );
  }
}
