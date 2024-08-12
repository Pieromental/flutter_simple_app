import 'package:flutter/material.dart';
import '../widgets/custom_floating_action_button.dart';
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String clickName = 'Click';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Project'),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                  clickName = 'Click';
                });
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${clickCounter <= 1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomFloatingActionButton(
            icon: Icons.refresh_rounded,
            callBack: () {
              clickCounter = 0;
              clickName = 'Click';
              setState(() {});
            },
            backColor: Colors.amber[100],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFloatingActionButton(
            icon: Icons.exposure_minus_1_outlined,
            callBack: () {
              if (clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            },
            backColor: Colors.red[100],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomFloatingActionButton(
            icon: Icons.plus_one,
            callBack: () {
              setState(() {
                clickCounter++;
              });
            },
            backColor: Colors.lime[100],
          )
        ],
      ),
    );
  }
}

