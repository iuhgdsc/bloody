import 'package:bloody/model/Register/event_regis.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response?> getQuestion() async {
    String url = "http://192.168.56.1:5000/api/getQuestions";
    try {
      final response = await _dio.get(url);
      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }

  Future<Response?> submitQuestions(EventRegis eventRegis) async {
    String url = "http://192.168.56.1:5000/api/registerEvent";
    try {
      final response = await _dio.post(url, data: eventRegis.toJson());
      return response;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
