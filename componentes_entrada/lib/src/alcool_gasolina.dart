import 'package:componentes_entrada/src/widgets/input.dart';
import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  const AlcoolGasolina({Key? key}) : super(key: key);

  @override
  State<AlcoolGasolina> createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();
  String _textResultado = "";
  calculate() {
    var alcool = double.tryParse(_controllerAlcool.text);
    var gasolina = double.tryParse(_controllerGasolina.text);
    if (alcool == null || gasolina == null) {
      setState(() {
        _textResultado =
            "Número inválido, digite números maiores que 0 e Utilize ponto";
      });
    } else {
      if (alcool < gasolina) {
        setState(() {
          _textResultado = "Melhor abastecer com álcool!!";
        });
      } else {
        setState(() {
          _textResultado = "Melhor abastecer com gasolina!!";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage("assets/images/logo.png"),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              InputData(
                controller: _controllerAlcool,
                text: "Preço Alcool, ex: 1.59",
              ),
              InputData(
                controller: _controllerGasolina,
                text: "Preço Gasolina, ex: 5.59",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: calculate,
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                  child: const Text(
                    "Calcular",
                  ),
                ),
              ),
              Text(
                _textResultado,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueAccent.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
