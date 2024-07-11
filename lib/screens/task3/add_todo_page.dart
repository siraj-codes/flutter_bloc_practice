import 'package:flutter/material.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController todotextEditingController =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Todo'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todotextEditingController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
