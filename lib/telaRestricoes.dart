// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';

class restricoes extends StatefulWidget {
  const restricoes({super.key});

  @override
  State<restricoes> createState() => _restricoesState();
}

class _restricoesState extends State<restricoes> {
  double _currentSliderPrimaryValue = 0.2;

  double _currentSliderSecondaryValue = 0.5;

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
        alignment: Alignment.topRight,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Restrições',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.white,
                        fontSize: 35,
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
              child: Text(
                textAlign: TextAlign.left,
                'Amizades',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                textAlign: TextAlign.center,
                '- Máximo de amizades estabelecidas pelo objeto',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _currentSliderPrimaryValue,
              label: _currentSliderPrimaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderPrimaryValue = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 170, 0),
              child: Text(
                textAlign: TextAlign.left,
                'Círculos Sociais',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                textAlign: TextAlign.left,
                '- Número de grupos que o objeto pode participar',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _currentSliderSecondaryValue,
              label: _currentSliderSecondaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderSecondaryValue = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
              child: Text(
                textAlign: TextAlign.left,
                'Requisições ',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                textAlign: TextAlign.left,
                '- Requisições atendidas no ambiente por ciclo',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _currentSliderSecondaryValue,
              label: _currentSliderSecondaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderSecondaryValue = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
              child: Text(
                textAlign: TextAlign.left,
                'Confiança',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                textAlign: TextAlign.left,
                '- Nível de confiança exigido para as interações',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _currentSliderSecondaryValue,
              label: _currentSliderSecondaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderSecondaryValue = value;
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 105, 0),
              child: Text(
                textAlign: TextAlign.left,
                'Eficiência Energética',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                textAlign: TextAlign.left,
                '- Reduz as interações conforme o nível de bateria',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: _currentSliderSecondaryValue,
              label: _currentSliderSecondaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderSecondaryValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
