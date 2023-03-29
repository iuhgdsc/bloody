import 'package:bloody/model/Register/event_regis.dart';
import 'package:bloody/model/user.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = "https://f0dc-171-252-155-225.ap.ngrok.io";

  Future<Response?> getQuestion() async {
    String url = "$baseUrl/api/getQuestions";

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
    String url = "$baseUrl/api/registerEvent";
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
    String url = "$baseUrl/api/getUser";
    final response = await _dio.get(url, queryParameters: {"phone": phone});
    try {
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }

  Future<Response?> getEventRegis() async {
    String url = "$baseUrl/api/getEvent";
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
    String url = "$baseUrl/api/getEmergencies";
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
    String url = "$baseUrl/api/addUser";
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
    String url = "$baseUrl/api/getEventFromUser";
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

  Future<Response?> deleteEventFromUser(String phone, String eventId) async {
    String url = "$baseUrl/api/deleteEventFromUser";
    try {
      final response =
          await _dio.delete(url, data: {"phone": phone, "id": eventId});
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }

  Future<Response?> getNotiByUser(String phone) async {
    String url = "$baseUrl/api/getNotiInUser";
    try {
      final response = await _dio.get(url, queryParameters: {"phone": phone});
      return response;
    } catch (e) {
      if (kDebugMode) {
        print("Error :$e");
      }
    }
    return null;
  }
}
