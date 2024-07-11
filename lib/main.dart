import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc_practice/bloc/counter_bloc.dart';
// import 'package:flutter_bloc_practice/cubit/counter_cubit.dart';
// import 'package:flutter_bloc_practice/cubit/counter_cubit.dart';
// import 'package:flutter_bloc_practice/screens/task1/home_page.dart';
// import 'package:flutter_bloc_practice/screens/task2/home2_page.dart';
import 'package:flutter_bloc_practice/screens/task3/add_todo_page.dart';
import 'package:flutter_bloc_practice/screens/task3/cubit/todo_cubit.dart';
import 'package:flutter_bloc_practice/screens/task3/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TodoCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const TodoList(),
          '/add-todo': (_) => const AddTodoPage(),
        },
      ),
    );
  }
}
