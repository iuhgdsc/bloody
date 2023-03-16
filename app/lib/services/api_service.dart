import 'package:bloody/model/Register/event_regis.dart';
import 'package:bloody/model/user.dart';
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
        print("Error :$e");
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
        print("Error :$e");
      }
    }
    return null;
  }

  Future<Response?> getUser(String phone) async {
    String url = "http://192.168.56.1:5000/api/getUser";
    try {
      final response = await _dio.get(url, queryParameters: {"phone": phone});
      print(response.data);
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }

  Future<Response?> getEventRegis() async {
    String url = "http://192.168.56.1:5000/api/getEvent";
    try {
      final response = await _dio.get(url);
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }

  Future<Response?> getEmergencies() async {
    String url = "http://192.168.56.1:5000/api/getEmergencies";
    try {
      final response = await _dio.get(url);
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }

  addUser(User user) async {
    String url = "http://192.168.56.1:5000/api/addUser";
    try {
      final response = await _dio.post(url, data: user.toJson());
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
  }

  Future<Response?> getEventRegisByUser(String phone) async {
    String url = "http://192.168.56.1:5000/api/getEventFromUser";
    try {
      final response = await _dio.get(url, data: {"phone": phone});
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }
}
