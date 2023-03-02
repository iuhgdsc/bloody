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
}
