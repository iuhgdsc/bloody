import 'package:bloody/model/Register/Question.dart';

class Service {
  List<Question> question = [
    Question(
        id: "1",
        numberQuestion: "1",
        question: "Anh/chị đã từng tham gia hiến máu chưa?",
        isYNQS: true,
        answers: [
          "Đã từng",
          "Chưa từng",
        ]),
    Question(
        id: "2",
        numberQuestion: "2",
        question:
            "Hiện tại, anh/chị có bị các bệnh: viêm khớp, dạ dày, viêm gan/vàng da, bệnh tim, huyết áp thấp/cao, hen, ho kéo dài, bệnh máu, lao?",
        isYNQS: true,
        answers: [
          "Có",
          "Không",
        ]),
    Question(
        id: "3",
        numberQuestion: "3",
        question:
            "Trong vòng 12 tháng gần đây, anh/chị có mắc các bệnh và đã được điều trị khỏi",
        isYNQS: false,
        answers: [
          "Sốt rét, Giang mai, Lao, Viêm não, Phẫu thuật ngoại khoa?",
          "Được truyền máu và các chế phẩm máu?",
          "Tiêm vacxin bệnh dại",
          "Không",
        ]),
    Question(
        id: "4",
        numberQuestion: "4",
        question:
            "Trong vòng 06 tháng gần đây, anh/chị có bị một trong số các triệu chứng sau không?",
        isYNQS: false,
        answers: [
          "Sút cân nhanh không rõ nguyên nhân",
          "Nổi hạch kéo dài",
          "Chữa răng, châm cứu",
          "Xăm mình, xỏ lỗ tai, lỗ mũi",
          "Sử dụng ma túy?",
          "Quan hệ tình dục với người nhiễm HIV hoặc người có hành vi nguy cơ lây nhiễm HIV",
          "Quan hệ tình dục với người đồng giới?",
          "Không"
        ]),
    Question(
        id: "5",
        numberQuestion: "5",
        question: "Trong 01 tháng gần đây, anh/chị có",
        isYNQS: false,
        answers: [
          "Khỏi bệnh sau khi mắc bệnh viêm đường tiết niệu, viêm da nhiễm trùng, viêm phế quản, viêm phổi, sởi, quai bị, Rubella, Khác",
          "Tiêm vacxin phòng bệnh?",
          "Đi vào vùng có dịch bệnh lưu hành (sốt rét, sốt xuất huyết, Zika,...)",
          "Không"
        ]),
    Question(
        id: "6",
        numberQuestion: "6",
        question: "Trong 07 ngày gần đây anh/chị có",
        isYNQS: false,
        answers: [
          "Bị cảm cúm (ho, nhức đầu, sốt...)?",
          "Dùng thuốc kháng sinh, Aspirin, Corticoid?",
          "Tiêm vacxin phòng Viêm gan siêu vi B, human Papilloma Virus.",
          "Không"
        ]),
    Question(
        id: "7",
        numberQuestion: "7",
        question: "Câu hỏi dành cho phụ nữ",
        isYNQS: false,
        answers: [
          "Hiện có thai, hoặc nuôi con dưới 12 tháng tuổi?",
          "Có kinh nguyệt trong vòng một tuần hay không?",
          "Không"
        ]),
    Question(
        id: "8",
        numberQuestion: "8",
        question:
            "Anh/chị có đồng ý xét nghiệm HIV, nhận thông báo và được tư vấn khi  kết quả xét nghiệm HIV nghi ngờ hoặc dương tính?",
        isYNQS: true,
        answers: [
          "Đồng ý",
          "Không đồng ý",
        ]),
    Question(
        id: "9",
        numberQuestion: "9",
        question: "Bạn đã tiêm vacxin Covid chưa?",
        isYNQS: true,
        answers: [
          "Đã tiêm",
          "Chưa tiêm",
        ]),
  ];

  Future<List<Question>> getQuestion() async {
    try {
      return question;
    } catch (e) {
      throw Exception("EError");
    }
  }
}
