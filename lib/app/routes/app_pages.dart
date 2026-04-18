import 'package:get/get.dart';
import 'package:tugas_pertemuan_3/app/modules/home/bindings/home_binding.dart';
import 'package:tugas_pertemuan_3/app/modules/home/views/home_view.dart';
import 'package:tugas_pertemuan_3/app/modules/profile/bindings/profile_binding.dart';
import 'package:tugas_pertemuan_3/app/modules/profile/views/profile_view.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
