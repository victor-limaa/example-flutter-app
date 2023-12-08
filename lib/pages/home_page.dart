import 'package:flutter/material.dart';
import 'package:workout_app/components/Button/button.dart';
import 'package:workout_app/pages/Personal/personal_login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Button(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalLoginPage()));
              },
              title: "Sou Professor"),
          Button(
              onPressed: () {
                print('Botão pressionado!');
              },
              title: "Sou Aluno")
        ],
      ),
    ));
  }
}
