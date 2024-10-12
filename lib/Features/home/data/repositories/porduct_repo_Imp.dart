import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:e_commerce/Core/ApiServer/productApi/product_api.dart';
import 'package:e_commerce/Features/home/data/models/ProductsModel.dart';
import 'package:e_commerce/Features/home/data/repositories/product_repo.dart';

import '../../../../Core/error/failure.dart';

class ProductRepoImp implements ProductRepo{
  final ProductApi productApi;
  List<ProductsModel>products=[];
  ProductRepoImp(this.productApi);

  @override
  Future<Either<Failure,Response>> getProducts() async {
      var response = await productApi.getProduct();
      products.add(ProductsModel.fromJson(response.data));
      List<dynamic> locationsJson = response.data['results'];
      products = locationsJson
          .map((json) => ProductsModel.fromJson(json))
          .toList();
      print(products[0].image?.original);
      return right(response);
  }

}