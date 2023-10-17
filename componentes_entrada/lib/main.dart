import 'package:componentes_entrada/src/alcool_gasolina.dart';
import 'package:flutter/material.dart';

// import 'components/components.dart';

void main() {
  runApp(const MyApp(
    title: "Componentes de entrada de dados",
  ));
}

class MyApp extends StatelessWidget {
  final String title;
  const MyApp({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const AlcoolGasolina(),
    );
  }
}
