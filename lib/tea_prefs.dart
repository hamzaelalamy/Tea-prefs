import 'package:flutter/material.dart';

class TeaPrefs extends StatefulWidget {
  const TeaPrefs({super.key});

  @override
  State<TeaPrefs> createState() => _TeaPrefsState();
}

class _TeaPrefsState extends State<TeaPrefs> {
  void incrementStrength() {
    print('Strength incremented');
  }

  void incrementSugar() {
    print('Sugar incremented');
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          const Text('Strength:'),
          const Text('3'),
          Image.asset(
            'assets/img/tea_leaf.png',
            width: 25,
            color: Colors.green[100],
            colorBlendMode: BlendMode.multiply,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.green[500],
                  foregroundColor: Colors.white),
              onPressed: incrementStrength,
              child: const Text('+'))
        ],
      ),
      Row(children: [
        const Text('Sugar:'),
        const Text('2'),
        Image.asset(
          'assets/img/sugar_cube.png',
          width: 25,
          color: Colors.green[100],
          colorBlendMode: BlendMode.multiply,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.green[500],
                foregroundColor: Colors.white),
            onPressed: incrementSugar,
            child: const Text('+'))
      ]),
    ]);
  }
}
