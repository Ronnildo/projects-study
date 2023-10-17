import 'package:flutter/material.dart';

class InputData extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  const InputData({
    Key? key,
    required this.controller,
    required this.text,
  }) : super(key: key);

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: widget.text,
        labelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
        hoverColor: Colors.greenAccent,
      ),
    );
  }
}
