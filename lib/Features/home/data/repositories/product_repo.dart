import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../Core/error/failure.dart';

abstract class ProductRepo{
  Future<Either<Failure,Response>> getProducts();
}