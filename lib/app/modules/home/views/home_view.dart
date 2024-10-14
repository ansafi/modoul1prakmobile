import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:projekk/app/modules/login/views/home_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(247, 248, 239, 179),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../../../assets/images/cat.png', // Ganti dengan path gambar kucing yang benar
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              'Selamat Datang di CatCare!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.to(
                    LoginView()); // Navigasi ke LoginView saat tombol ditekan
              },
              child: const Text("Masuk"),
            ),
          ],
        ),
      ),
    );
  }
}
