import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/screens/task1/cubit/counter_cubit.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent[50],
      ),
      floatingActionButton: BlocBuilder(
          bloc: counterCubit,
          builder: (context, count) {
            return Column(
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
            );
          }),
    );
  }
}
