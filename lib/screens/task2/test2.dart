import 'package:flutter/material.dart';

class Test2Page extends StatelessWidget {
  const Test2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Test 2 page'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.minimize,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Reset'),
            )
          ],
        ));
  }
}
