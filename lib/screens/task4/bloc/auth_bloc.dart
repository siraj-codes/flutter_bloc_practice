import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginReq>((event, emit) async {
      final email = event.email;
      final password = event.password;

      try {
        if (email.isEmpty || password.isEmpty) {
          return emit(
            AuthFailure(errorMsg: 'Email or Password Field is Empty'),
          );
        }

        if (!email.contains('@') || !email.contains('.com')) {
          return emit(
            AuthFailure(errorMsg: 'Please Correct your email...'),
          );
        }
        if (password.length < 9) {
          int l = password.length;
          return emit(
            AuthFailure(
                errorMsg:
                    'Your Password Length is $l Password Length Should be Greater then 8'),
          );
        } else {
          await Future.delayed(
            const Duration(seconds: 1),
            () {
              return emit(
                AuthSuccess(uid: '$email-$password'),
              );
            },
          );
        }
      } catch (e) {
        return emit(
          AuthFailure(
            errorMsg: e.toString(),
          ),
        );
      }
    });
  }
}
