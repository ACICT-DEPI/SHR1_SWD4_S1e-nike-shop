import 'package:bloc/bloc.dart';
import 'package:e_commerce/Config/routes/appRoutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardInitial());
  static OnboardCubit get(context)=>BlocProvider.of(context);
  int index=0;
  changeOnboardView(int x){
    index =x;
    emit(ChangeOnboardSucState());
  }
  changeOnboardViewButton(BuildContext context){
    if(index<2){
      index+=1;
    }
    else if(index==2){
      Navigator.pushNamedAndRemoveUntil(context, AppRoutesName.login, (route) => false);
    }

    emit(ChangeOnboardButSucState());
  }
}
