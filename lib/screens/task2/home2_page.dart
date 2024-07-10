import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/bloc/counter_bloc.dart';
import 'package:flutter_bloc_practice/screens/task2/test2.dart';

class Home2Page extends StatelessWidget {
  const Home2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
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
            BlocBuilder<CounterBloc, int>(
              bloc: counterBloc,
              builder: (context, count) {
                return Text(
                  'Count is : $count',
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
                      return const Test2Page();
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
              counterBloc.add(CounterIncremented());
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
              counterBloc.add(CounterDecremented());
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
              counterBloc.add(CounterReset());
            },
            child: const Text('Reset'),
          )
        ],
      ),
    );
  }
}
