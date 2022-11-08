import 'package:admin_dashboard/services/local_storage.dart';
import 'package:dio/dio.dart';

class CafeApi {
  static Dio _dio = new Dio();

  static void configureDio() {
    //URL base

    _dio.options.baseUrl = 'http://localhost:8080/api';

//Header configuration
    _dio.options.headers = {
      'x-token': LocalStorage.prefs.getString('token') ?? ""
    };
  }

  static Future httpGet(String path) async {
    try {
      final resp = await _dio.get(path);

      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error in the GET');
    }
  }

  static Future post(String path, Map<String, dynamic> data) async {
    final formData = FormData.fromMap(data);
    try {
      final resp = await _dio.post(path, data: formData);

      return resp.data;
    } catch (e) {
      print(e);
      throw ('Error in the POST');
    }
  }
}
