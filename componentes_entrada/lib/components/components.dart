import 'package:componentes_entrada/components/campo_texto.dart';
import 'package:flutter/material.dart';

class Componentes extends StatefulWidget {
  const Componentes({Key? key}) : super(key: key);

  @override
  State<Componentes> createState() => _ComponentesState();
}

class _ComponentesState extends State<Componentes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Entrada de Dados",
        ),
      ),
      body: const CampoTexto(),
    );
  }
}
