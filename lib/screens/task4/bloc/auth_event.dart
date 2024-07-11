part of 'auth_bloc.dart';

sealed class AuthEvent {}

final class AuthLoginReq extends AuthEvent {
  final String password;
  final String email;

  AuthLoginReq({
    required this.password,
    required this.email,
  });
}
