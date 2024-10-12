part of 'home_cubit.dart';

@immutable
 class HomeState {}

 class HomeInitial extends HomeState {}
 class OpenDrawerState extends HomeState {}
 class ChangeIndexState extends HomeState {}
 class ProductsLoading extends HomeState {}
 class GetProductsSucState extends HomeState {
 final Response response;

 GetProductsSucState(this.response);
}
 class GetProductsErrorState extends HomeState {
 final String error;
 GetProductsErrorState(this.error);
}
