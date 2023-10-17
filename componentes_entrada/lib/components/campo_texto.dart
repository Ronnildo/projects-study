import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  final TextEditingController _controller = TextEditingController();
  late String texto = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: _controller,
            decoration: const InputDecoration(
              labelText: "Digite um valor",
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            maxLength: 10,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            //Captura cada caracter digitado
            // onChanged: (String value) {
            //   print(value);
            // },
            onSubmitted: (String value) {
              // print(value);
            },
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = _controller.text;
                });
              },
              child: const Text("Salvar")),
          Text(
            "Valor digitado: $texto",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
