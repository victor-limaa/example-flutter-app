import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          labelText: 'Digite algo',
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          // Callback chamado quando o texto no TextField é alterado
          print('Novo valor: $value');
        },
      ),
    );
  }
}
