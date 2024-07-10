import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/cubit/counter_cubit.dart';

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
    return BlocBuilder<CounterCubit, int>(
        bloc: counterCubit,
        builder: (context, counter) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              title: const Text('Counter App'),
              centerTitle: true,
            ),
            body: Center(
              child: Text(
                'Count is : $counter',
                style: const TextStyle(fontSize: 27),
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
        });
  }
}
