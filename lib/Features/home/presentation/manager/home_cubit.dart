import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce/Core/utils/generalVariable/general_variable.dart';
import 'package:e_commerce/Features/home/data/repositories/porduct_repo_Imp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:meta/meta.dart';

import '../../../../Core/error/failure.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.productRepoImp) : super(HomeInitial());
  static HomeCubit get(context)=>BlocProvider.of(context);
  final ProductRepoImp productRepoImp;
  final ZoomDrawerController z = ZoomDrawerController();
  User? firebaseuser = FirebaseAuth.instance.currentUser;
  int currentIndex=2;
  void toggleDrawer() {
    print("Toggle drawer");
    z.toggle;
    emit(OpenDrawerState());
  }
  changeIndex(int index){
    currentIndex=index;
    GeneralVariable.index=index;
    emit(ChangeIndexState());
  }
  Future<void>getProducts()async {
    emit(ProductsLoading());
    Either<Failure, Response> response = await productRepoImp.getProducts(
    );
    response.fold(
            (failure) {
          emit(GetProductsErrorState(failure.errMessage));
          print(failure.errMessage);
        }, (response) {
      emit(
        GetProductsSucState(response),
      );
    });
  }
}
