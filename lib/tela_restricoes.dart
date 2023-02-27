import 'package:flutter/material.dart';
import 'tela.dart';

class TelaRestricoes extends StatefulWidget {
  const TelaRestricoes({super.key});

  @override
  State<TelaRestricoes> createState() => _TelaRestricoesState();
}

class _TelaRestricoesState extends State<TelaRestricoes> {
  final List<double> _currentSliderValue = <double>[20.0, 99.0, 50.0, 70.0, 0.0];

  @override
  Widget build(BuildContext context) {
    return Tela(
      "Restrições",
      () {Navigator.pop(context);},
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  'Amizades',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '- Máximo de amizades estabelecidas pelo objeto',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 10,
                  child: Slider(
                    min: 0,
                    max: 99,
                    divisions: 99,
                    value: _currentSliderValue[0],
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue[0] = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 40,
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  '${_currentSliderValue[0].round()}',
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  'Círculos Sociais',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '- Número de grupos que o objeto pode participar',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 10,
                  child: Slider(
                    min: 0,
                    max: 99,
                    divisions: 99,
                    value: _currentSliderValue[1],
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue[1] = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 40,
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  '${_currentSliderValue[1].round()}',
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  'Requisições',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '- Requisições atendidas no ambiente por ciclo',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 10,
                  child: Slider(
                    min: 0,
                    max: 99,
                    divisions: 99,
                    value: _currentSliderValue[2],
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue[2] = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 40,
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  '${_currentSliderValue[2].round()}',
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  'Confiança',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '- Nível de confiança exigido para as interações',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 10,
                  child: Slider(
                    min: 0,
                    max: 99,
                    divisions: 99,
                    value: _currentSliderValue[3],
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue[3] = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 40,
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  '${_currentSliderValue[3].round()}',
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  'Eficiência Energética',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  '- Reduz as interações conforme o nível de bateria',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 10,
                  child: Slider(
                    min: 0,
                    max: 99,
                    divisions: 99,
                    value: _currentSliderValue[4],
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue[4] = value;
                      });
                    },
                  ),
                ),
              ),
              Container(
                width: 40,
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  '${_currentSliderValue[4].round()}',
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
