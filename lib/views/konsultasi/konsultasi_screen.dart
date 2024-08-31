import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uud1/controllers/konsultasi_controller.dart';

class KonsultasiScreen extends StatelessWidget {
  KonsultasiScreen({super.key});
  final KonsultasiController controller = Get.put(KonsultasiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsultasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nama Pengirim'),
              onChanged: (value) => controller.senderName.value = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email Pengirim'),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) => controller.senderEmail.value = value,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Perihal'),
              onChanged: (value) => controller.subject.value = value,
              maxLines: 3, // Allows the TextFormField to expand vertically as the user types
              keyboardType: TextInputType.multiline, // Allows multiline input
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.sendEmail,
              child: Text('Kirim Email'),
            ),
          ],
        ),
      ),
    );
  }
}
