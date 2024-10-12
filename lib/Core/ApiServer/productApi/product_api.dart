import 'package:dio/dio.dart';

import '../../utils/constants/strings.dart';

class ProductApi{
  final Dio dio;

  ProductApi(this.dio);

  Future<Response> getProduct() async{
    var response = await dio.get("${Strings.apiBaseUrl}/api/916/sneakers+database+api/731/search+sneaker",
      queryParameters: {
      "query":"nike"
      },
      options: Options(
        headers: {
          'Authorization': 'Bearer 5425|UtjXKYc1R0r5ZJHa1dVnRmUdqNgMmq6Z4XWNlNIk',
        },
      ),
    );
    print(response.data["results"]);
    return response;
  }
}