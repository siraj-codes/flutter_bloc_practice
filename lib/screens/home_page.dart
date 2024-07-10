import 'package:flutter/material.dart';
import 'package:flutter_bloc_practice/cubit/counter_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final count = CounterCubit().state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Count is : $count',
          style: const TextStyle(fontSize: 27),
        ),
      ),
      floatingActionButton: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.blueGrey,
          )),
    );
  }
}
