import 'package:coffee_card/tea_prefs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Tea Shop",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 93, 153, 89),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green[200],
              child: const Text('How I like my tea...'),
            ),
            Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green[100],
                child: const TeaPrefs()),
            Expanded(
                child: Image.asset(
              'assets/img/tea_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ))
          ],
        ));
  }
}
