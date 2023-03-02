import 'package:bloody/model/Register/event_regis.dart';
import 'package:bloody/model/Register/question_check.dart';
import 'package:bloody/services/api_service.dart';

class ApiRepository {
  const ApiRepository({
    required this.apiService,
  });
  final ApiService apiService;

  Future<List<QuestionRegisterCheck>?> getQuestions() async {
    final response = await apiService.getQuestion();
    if (response != null) {
      final data = response.data['questions'] as List<dynamic>;
      return data.map((ques) => QuestionRegisterCheck.fromMap(ques)).toList();
    }
    return null;
  }

  Future<bool> submitQuestions(EventRegis eventRegis) async {
    final response = await apiService.submitQuestions(eventRegis);
    if (response?.statusCode == 200) {
      return true;
    }
    return false;
  }
}
