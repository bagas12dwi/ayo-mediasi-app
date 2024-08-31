import 'package:get/get.dart';
import 'package:uud1/controllers/splash_controller.dart';
import 'package:uud1/views/home/homescreen.dart';
import 'package:uud1/views/konsultasi/konsultasi_screen.dart';
import 'package:uud1/views/materi/detail_screen.dart';
import 'package:uud1/views/materi/materi_screen.dart';
import 'package:uud1/views/mitra/mitra_screen.dart';
import 'package:uud1/views/panduan/panduan_screen.dart';
import 'package:uud1/views/qna/answer_screen.dart';
import 'package:uud1/views/qna/qna_screen.dart';
import 'package:uud1/views/splash/splash.dart';
import 'package:uud1/views/tim/cv_screen.dart';
import 'package:uud1/views/tim/data_tim_screen.dart';
import 'package:uud1/views/wrapper.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const Wrapper(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routes.MATERI,
      page: () => const MateriScreen(),
    ),
    GetPage(name: Routes.KONSULTASI, page: () => KonsultasiScreen()),
    GetPage(name: Routes.DATA, page: () => const DataTimScreen()),
    GetPage(name: Routes.PANDUAN, page: () => PanduanScreen()),
    GetPage(name: Routes.MITRA, page: () => const MitraScreen()),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailScreen(),
    ),
    GetPage(
        name: Routes.CV,
        page: () => const CvScreen()
    ),
    GetPage(name: Routes.QNA, page: () => QnaScreen()),
    GetPage(name: Routes.ANSWER, page: () => AnswerScreen())
  ];
}
