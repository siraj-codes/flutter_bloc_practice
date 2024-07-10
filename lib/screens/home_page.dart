import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/cubit/counter_cubit.dart';
import 'package:flutter_bloc_practice/screens/test_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final counterCubit = CounterCubit();

  @override
  void dispose() {
    counterCubit.close(); // Don't forget to close the cubit
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder(
              bloc: counterCubit,
              builder: (context, counter) {
                return Text(
                  'Count is : $counter',
                  style: const TextStyle(fontSize: 27),
                );
              },
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TestPage();
                    },
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                  child: Text(
                    'Next Page',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              counterCubit.inc();
            },
            icon: const Icon(
              Icons.add,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: () {
              counterCubit.dec();
            },
            icon: const Icon(
              Icons.minimize,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              counterCubit.reset();
            },
            child: const Text('Reset'),
          )
        ],
      ),
    );
  }
}
