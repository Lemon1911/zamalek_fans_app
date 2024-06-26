import '../../domain/entities/user.dart';

abstract class LoginState extends Equatable {
  LoginState();

  @override
  List<Object?> get props => [];
}

class Equatable {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final User user;

  LoginSuccess(this.user);

  @override
  List<Object?> get props => [user];
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure(this.error);

  @override
  List<Object?> get props => [error];
}
