import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiServices extends GetxService {
  getcalling(String url) async {
    final Dio dio = Dio();
    // FormData dat=
    final response = await dio.get(url);
    return response;
  }
}
