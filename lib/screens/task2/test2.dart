import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/screens/task2/bloc/counter_bloc.dart';

class Test2Page extends StatelessWidget {
  const Test2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final couterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Test 2 page'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  couterBloc.add(CounterIncremented());
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
                  couterBloc.add(CounterDecremented());
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
                  couterBloc.add(CounterReset());
                },
                child: const Text('Reset'),
              )
            ],
          ),
        ));
  }
}
