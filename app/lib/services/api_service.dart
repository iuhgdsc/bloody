import 'package:bloody/model/Register/question_check.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  final String _url = "http://192.168.56.1:5000/api/getQuestions";

  Future<Response?> getQuestion() async {
    try {
      final response = await _dio.get(_url);
      return response;
    } catch (e) {
      print(e);
    }
    return null;
  }
}
