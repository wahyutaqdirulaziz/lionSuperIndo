import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:super_indo/models/product_model.dart';
import 'package:super_indo/untilities/constant_helpers.dart';
import 'package:super_indo/untilities/url_helpers.dart';

class ProductService {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: UrlConstantHelper.BASE_URL,
      responseType: ResponseType.json,
      headers: {
        'content-type': ConstantHelper.CONTENT_TYPE,
      },
    ),
  );

  Future<ProductModel> getProduct() async {
    try {
      Response response = await dio.get(
        UrlConstantHelper.GET_PRODUCTS,
      );
      if (response.statusCode != 200) {
        return productModelFromJson(json.encode(response.data));
      }
      return productModelFromJson(json.encode(response.data));
    } on DioError catch (e) {
      return ProductModel();
    }
  }
}
