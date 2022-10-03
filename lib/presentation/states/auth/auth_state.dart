import 'package:segurancaif/domain/entities/usuario.dart';

class AuthState {}

class UnauthenticatedState extends AuthState {}

class AuthenticatingState extends AuthState {}

class AuthenticatedState extends AuthState {
  Usuario usuario;
  AuthenticatedState(this.usuario);
}