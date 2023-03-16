class QuestionRegisterCheck {
  String id;
  String question;

  String numberQuestion;

  bool isYNQS = false;

  List<String> answers = [];

  QuestionRegisterCheck({
    required this.id,
    required this.question,
    required this.numberQuestion,
    required this.isYNQS,
    required this.answers,
  });
  factory QuestionRegisterCheck.fromMap(Map<String, dynamic> json) {
    return QuestionRegisterCheck(
      id: json['id'],
      question: json['question'],
      isYNQS: json['isYNQS'],
      answers: json['answers'],
      numberQuestion: '',
    );
  }

  QuestionRegisterCheck copyWith({required List<String> selectedOptions}) {
    return QuestionRegisterCheck(
      id: id,
      question: question,
      isYNQS: isYNQS,
      answers: answers,
      numberQuestion: '',
    );
  }
}
