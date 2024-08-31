import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uud1/helpers/api.dart';
import 'package:uud1/models/answer_model.dart';
import 'package:uud1/models/question_model.dart';

class QuestionController extends GetxController {
  var questionList = RxList<Question>([
    Question(id: 1, question: 'Apa itu mediasi dalam konteks hukum?'),
    Question(id: 2, question: 'Siapa yang dapat menjadi mediator?'),
    Question(id: 3, question: 'Apa perbedaan antara mediasi dan arbitrase?'),
    Question(id: 4, question: 'Kapan waktu yang tepat untuk menggunakan mediasi?'),
    Question(id: 5, question: 'Apakah hasil mediasi memiliki kekuatan hukum?'),
    Question(id: 6, question: 'Apakah mediasi bersifat wajib dalam setiap sengketa hukum?'),
    Question(id: 7, question: 'Bagaimana proses mediasi dimulai?'),
    Question(id: 8, question: 'Apa keuntungan mediasi dibandingkan litigasi di pengadilan?'),
    Question(id: 9, question: 'Apakah mediasi dapat digunakan untuk semua jenis sengketa hukum?'),
    Question(id: 10, question: 'Apa yang terjadi jika mediasi tidak menghasilkan kesepakatan?'),
    Question(id: 11, question: 'Apakah mediasi menjaga kerahasiaan informasi yang dibahas?'),
    Question(id: 12, question: 'Siapa yang menanggung biaya mediasi?'),
    Question(id: 13, question: 'Bagaimana cara memilih mediator yang tepat?'),
    Question(id: 14, question: 'Apakah mediasi dapat dilakukan secara online?'),
    Question(id: 15, question: 'Apa peran mediator dalam proses mediasi?'),
    Question(id: 16, question: 'Apakah para pihak harus hadir secara langsung dalam mediasi?'),
    Question(id: 17, question: 'Bagaimana jika salah satu pihak tidak bersedia untuk mediasi?'),
    Question(id: 18, question: 'Apakah hasil mediasi dapat diubah setelah disepakati?'),
    Question(id: 19, question: 'Apakah mediasi efektif untuk menyelesaikan sengketa dalam bisnis?'),
    Question(id: 20, question: 'Bagaimana peran mediasi dalam kasus perceraian?'),
  ]);

  var answerList = RxList<Answer>([
    Answer(id: 1, questionId: 1, answer: 'Mediasi adalah suatu metode penyelesaian sengketa di luar pengadilan di mana pihak-pihak yang bersengketa dibantu oleh seorang mediator untuk mencapai kesepakatan secara sukarela.'),
    Answer(id: 2, questionId: 2, answer: 'Mediator adalah pihak netral yang tidak memihak, biasanya seorang ahli dalam bidang hukum atau seseorang yang memiliki sertifikasi sebagai mediator yang diakui secara hukum.'),
    Answer(id: 3, questionId: 3, answer: 'Dalam mediasi, keputusan akhir ditentukan oleh para pihak yang bersengketa dengan bantuan mediator, sedangkan dalam arbitrase, arbitrator membuat keputusan yang mengikat para pihak.'),
    Answer(id: 4, questionId: 4, answer: 'Mediasi dapat digunakan kapan saja, baik sebelum atau setelah gugatan diajukan di pengadilan, terutama ketika para pihak ingin menyelesaikan sengketa secara damai dan cepat.'),
    Answer(id: 5, questionId: 5, answer: 'Ya, jika kesepakatan tercapai dan dituangkan dalam perjanjian tertulis, hasil mediasi dapat memiliki kekuatan hukum yang mengikat bagi para pihak.'),
    Answer(id: 6, questionId: 6, answer: 'Tidak, mediasi bersifat sukarela, namun ada beberapa yurisdiksi yang mewajibkan mediasi sebelum kasus tertentu diajukan ke pengadilan.'),
    Answer(id: 7, questionId: 7, answer: 'Proses mediasi dimulai ketika para pihak yang bersengketa sepakat untuk menggunakan mediasi dan memilih seorang mediator untuk memfasilitasi proses tersebut.'),
    Answer(id: 8, questionId: 8, answer: 'Mediasi biasanya lebih cepat, lebih murah, dan lebih bersifat rahasia dibandingkan dengan proses litigasi di pengadilan.'),
    Answer(id: 9, questionId: 9, answer: 'Mediasi dapat digunakan untuk berbagai jenis sengketa, termasuk sengketa perdata, keluarga, komersial, dan tenaga kerja, namun tidak cocok untuk semua kasus, seperti kasus pidana berat.'),
    Answer(id: 10, questionId: 10, answer: 'Jika mediasi tidak menghasilkan kesepakatan, para pihak masih memiliki opsi untuk melanjutkan sengketa mereka ke pengadilan atau mencari metode penyelesaian sengketa lainnya.'),
    Answer(id: 11, questionId: 11, answer: 'Ya, mediasi biasanya bersifat rahasia, dan informasi yang dibahas selama mediasi tidak dapat digunakan sebagai bukti di pengadilan jika mediasi gagal.'),
    Answer(id: 12, questionId: 12, answer: 'Biaya mediasi biasanya ditanggung bersama oleh para pihak yang bersengketa, kecuali jika ada kesepakatan lain.'),
    Answer(id: 13, questionId: 13, answer: 'Para pihak dapat memilih mediator berdasarkan pengalaman, keahlian dalam bidang hukum yang relevan, atau rekomendasi dari lembaga mediasi yang terpercaya.'),
    Answer(id: 14, questionId: 14, answer: 'Ya, dengan perkembangan teknologi, mediasi sekarang dapat dilakukan secara online melalui platform video conference, memudahkan akses bagi para pihak yang berada di lokasi berbeda.'),
    Answer(id: 15, questionId: 15, answer: 'Mediator berperan sebagai fasilitator yang membantu para pihak berkomunikasi, memahami posisi masing-masing, dan mencari solusi yang dapat diterima bersama.'),
    Answer(id: 16, questionId: 16, answer: 'Kehadiran langsung para pihak dianjurkan, namun jika tidak memungkinkan, mereka dapat diwakili oleh kuasa hukum atau melalui mediasi online.'),
    Answer(id: 17, questionId: 17, answer: 'Mediasi tidak dapat berlangsung tanpa persetujuan semua pihak yang bersengketa, jadi jika salah satu pihak tidak bersedia, mediasi tidak dapat dilaksanakan.'),
    Answer(id: 18, questionId: 18, answer: 'Hasil mediasi yang telah disepakati dan ditandatangani oleh para pihak hanya dapat diubah dengan kesepakatan bersama atau jika ada alasan hukum yang kuat.'),
    Answer(id: 19, questionId: 19, answer: 'Ya, mediasi sangat efektif dalam sengketa bisnis karena dapat menyelesaikan masalah tanpa merusak hubungan bisnis yang ada.'),
    Answer(id: 20, questionId: 20, answer: 'Mediasi dalam perceraian membantu pasangan untuk mencapai kesepakatan tentang hak asuh anak, pembagian harta, dan isu-isu lain tanpa melalui proses pengadilan yang panjang dan emosional.'),
  ]);

  RxBool isLoading = true.obs;
  var answer = ''.obs;

  @override
  void onInit() {
    super.onInit();
    getQna();
  } // Track the loading state

  Future<void> getAnswer(int questionId) async{
    var ans = answerList.firstWhereOrNull((a) => a.questionId == questionId);

    answer.value = ans?.answer ?? 'Answer not found';
  }

  Future<void> getQna() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2)); // Simulate API call delay
    isLoading.value = false; // Data loading complete
  }
}
