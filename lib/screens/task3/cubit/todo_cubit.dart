import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/screens/task3/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    emit([...state, todo]);
  }
}
