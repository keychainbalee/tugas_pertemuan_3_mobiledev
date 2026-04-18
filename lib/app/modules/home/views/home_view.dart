import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_pertemuan_3/app/modules/home/controllers/home_controller.dart';
import 'package:tugas_pertemuan_3/app/routes/app_pages.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            // Menggunakan GetX routing untuk pindah halaman
            Get.toNamed(Routes.PROFILE);
          },
          icon: const Icon(Icons.person_search),
          label: const Text('Lihat Data Diri'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
        ),
      ),
    );
  }
}