part of 'login_bloc.dart';

enum InputStatus {
  empty,
  filled,
  initial,
  loading,
  success,
  failure,
  authFail,
  notFound,
}

class LoginState extends Equatable {
  final InputStatus? inputState;
  final String? email;
  final String? password;

  const LoginState({this.inputState, this.email, this.password});

  LoginState copyWith({
    InputStatus? inputState,
    String? email,
    String? password,
  }) {
    return LoginState(
        inputState: inputState ?? this.inputState,
        email: email ?? this.email,
        password: password ?? this.password);
  }

  @override List<Object?> get props => [inputState,email,password];
}

final class LoginInitial extends LoginState {}
