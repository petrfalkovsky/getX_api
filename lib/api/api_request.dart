import 'package:dio/dio.dart';

class ApiRequest {
  final String url;
  final Map<String, dynamic> data;
  ApiRequest({
    required this.url,
    required this.data,
  });

  Dio _dio() {
    return Dio(BaseOptions(headers: {
      'Authorization': 'B ....',
    }));
  }

  void get({
    required Function() beforeSend,
    required Function(dynamic data) onSuccess,
    required Function(dynamic error) onError,
  }) {
    _dio().get(this.url, queryParameters: data).then((res) {
      // ignore: unnecessary_null_comparison
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      // ignore: unnecessary_null_comparison
      if (onError != null) onError(error);
    });
  }
}
