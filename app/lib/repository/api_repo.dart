import 'package:bloody/model/emergency.dart';
import 'package:bloody/model/Register/event_regis.dart';
import 'package:bloody/model/Register/question_check.dart';
import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/model/message.dart';
import 'package:bloody/model/user.dart';
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

  Future<User?> getUser(String phone) async {
    final response = await apiService.getUser(phone);
    if (response != null) {
      User user = User.fromMap(response.data['user']);
      return user;
    } else {
      return null;
    }
  }

  Future<void> addUser(User user) async {
    final response = await apiService.addUser(user);
    if (response?.statusCode == 200) {
      return;
    }
  }

  Future<List<CenterBlood>?> getEventRegis() async {
    final response = await apiService.getEventRegis();
    if (response != null) {
      final data = response.data['events'] as List<dynamic>;
      return data.map((event) => CenterBlood.fromMap(event)).toList();
    }
    return null;
  }

  Future<List<Emergency>?> getEmergencies() async {
    final response = await apiService.getEmergencies();
    if (response != null) {
      final data = response.data['emergencies'] as List<dynamic>;
      return data.map((emer) => Emergency.fromMap(emer)).toList();
    }
    return null;
  }

  Future<List<EventRegis>?> getEventRegisByUser(String phone) async {
    final response = await apiService.getEventRegisByUser(phone);

    if (response != null) {
      final data = response.data['events'] as List<dynamic>;
      return data.map((event) => EventRegis.fromMap(event)).toList();
    }
    return null;
  }

  Future<bool> deleteEventRegis(String phone, String eventId) async {
    final response = await apiService.deleteEventFromUser(phone, eventId);
    if (response?.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<List<Message>?> getNotiByUser(String phone) async {
    final response = await apiService.getNotiByUser(phone);

    if (response != null) {
      final data = response.data['notify'] as List<dynamic>;
      return data.map((event) => Message.fromMap(event)).toList();
    }
    return null;
  }
}
