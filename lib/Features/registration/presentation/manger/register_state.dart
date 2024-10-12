part of 'register_cubit.dart';
 class RegisterState {}

 class RegisterInitial extends RegisterState {}

 class SignupLoadingState extends RegisterState {}

 class LoadingLoginState extends RegisterState {}

 class SignupErrorState extends RegisterState {
   final String error;
   SignupErrorState(this.error);
}
 class ErrorLoginState extends RegisterState {
   final String error;
   ErrorLoginState(this.error);
}

 class SignupSuccsesState extends RegisterState {}

 class SuccsesLoginState extends RegisterState {}

 class SignupWithGmailSuccsesState extends RegisterState {}

 class SignupWithGmailLoadingState extends RegisterState {}
