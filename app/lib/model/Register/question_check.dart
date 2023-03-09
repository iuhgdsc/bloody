class QuestionRegisterCheck {
  String? id;
  String? question;

  bool? isYNQS = false;

  List<dynamic>? answers = [];

  QuestionRegisterCheck({
    this.id,
    this.question,
    this.isYNQS,
    this.answers,
  });
  factory QuestionRegisterCheck.fromMap(Map<String, dynamic> json) {
    return QuestionRegisterCheck(
      id: json['id'],
      question: json['question'],
      isYNQS: json['isYNQS'],
      answers: json['answers'],
    );
  }

  QuestionRegisterCheck copyWith({required List<String> selectedOptions}) {
    return QuestionRegisterCheck(
      id: id,
      question: question,
      isYNQS: isYNQS,
      answers: answers,
    );
  }
}
