part of 'login_bloc.dart';


abstract class LoginEvent extends Equatable{
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginEmail extends LoginEvent{
  final String email;
  const LoginEmail(this.email);

  @override
  List<Object> get props => [];
}

class LoginPassword extends LoginEvent{
  final String password;
  const LoginPassword(this.password);

  @override
  List<Object> get props => [];
}