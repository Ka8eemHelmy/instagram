import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram2/view_model/cubit/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState>{
  AuthCubit() : super(InitialState());

  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);

  bool hidePassword = true;
  bool hideConfirmPassword = true;

  void toggleHidePassword () {
    hidePassword = !hidePassword;
    emit(ToggleHidePassword());
  }

  void toggleHideConfirmPassword () {
    hideConfirmPassword = !hideConfirmPassword;
    emit(ToggleHideConfirmPassword());
  }

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController note = TextEditingController();
}