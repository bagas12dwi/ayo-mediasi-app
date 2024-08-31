import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CvScreen extends StatelessWidget {
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments as Map<String, dynamic>;

    final String cvPath = args['cvPath'] ?? '';
    final String nama = args['nama'] ?? '';
    return Scaffold(
      appBar: AppBar(
        title: Text("CV $nama"),
      ),
      body: SfPdfViewer.asset(cvPath),
    );
  }
}
