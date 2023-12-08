import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool disable;

  const Button(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.disable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.orangeAccent;
                  }
                  if (disable) {
                    return Colors.grey;
                  }
                  return Colors.orangeAccent[400];
                }),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)))),
            onPressed: disable ? null : onPressed,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            )));
  }
}
