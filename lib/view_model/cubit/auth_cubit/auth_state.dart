abstract class AuthState {}

class InitialState extends AuthState {}

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class LoginErrorState extends AuthState {}

class ToggleHidePassword extends AuthState {}

class ToggleHideConfirmPassword extends AuthState {}
