import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController eC = TextEditingController();
    final TextEditingController pC = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.red.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sign Up'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: eC,
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: Colors.lightBlue[100],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: pC,
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.lightBlue[100],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 55,
              width: 275,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
