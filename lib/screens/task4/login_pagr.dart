import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_practice/screens/task4/bloc/auth_bloc.dart';
import 'package:flutter_bloc_practice/screens/task4/h_p.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController eC = TextEditingController();
    final TextEditingController pC = TextEditingController();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMsg),
            ),
          );
        } else if (state is AuthSuccess) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const Hp();
              },
            ),
          );
        }
      },
      child: Scaffold(
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
              GestureDetector(
                onTap: () {
                  BlocProvider.of<AuthBloc>(context).add(AuthLoginReq(
                    email: eC.text.trim(),
                    password: pC.text.trim(),
                  ));
                },
                child: Container(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
