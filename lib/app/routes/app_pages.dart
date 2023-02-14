import 'package:get/get.dart';

import '../modules/admin/createmerkmobil/bindings/createmerkmobil_binding.dart';
import '../modules/admin/createmerkmobil/views/createmerkmobil_view.dart';
import '../modules/admin/homeadmin/bindings/homeadmin_binding.dart';
import '../modules/admin/homeadmin/views/homeadmin_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login/views/login_view.dart';
import '../modules/merk/merkmobil/bindings/merkmobil_binding.dart';
import '../modules/merk/merkmobil/views/merkmobil_view.dart';
import '../modules/merk/merkmotor/bindings/merkmotor_binding.dart';
import '../modules/merk/merkmotor/views/merkmotor_view.dart';
import '../modules/admin/merkmobiladmin/bindings/merkmobiladmin_binding.dart';
import '../modules/admin/merkmobiladmin/views/merkmobiladmin_view.dart';
import '../modules/model/modelmobil/bindings/modelmobil_binding.dart';
import '../modules/model/modelmobil/views/modelmobil_view.dart';
import '../modules/model/modelmotor/bindings/modelmotor_binding.dart';
import '../modules/model/modelmotor/views/modelmotor_view.dart';
import '../modules/preview/previewmobil/bindings/previewmobil_binding.dart';
import '../modules/preview/previewmobil/views/previewmobil_view.dart';
import '../modules/preview/previewmotor/bindings/previewmotor_binding.dart';
import '../modules/preview/previewmotor/views/previewmotor_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.MERKMOBIL,
      page: () => const MerkmobilView(),
      binding: MerkmobilBinding(),
    ),
    GetPage(
      name: _Paths.MERKMOTOR,
      page: () => const MerkmotorView(),
      binding: MerkmotorBinding(),
    ),
    GetPage(
      name: _Paths.MODELMOTOR,
      page: () => const ModelmotorView(),
      binding: ModelmotorBinding(),
    ),
    GetPage(
      name: _Paths.MODELMOBIL,
      page: () => const ModelmobilView(),
      binding: ModelmobilBinding(),
    ),
    GetPage(
      name: _Paths.PREVIEWMOBIL,
      page: () => const PreviewmobilView(),
      binding: PreviewmobilBinding(),
    ),
    GetPage(
      name: _Paths.PREVIEWMOTOR,
      page: () => const PreviewmotorView(),
      binding: PreviewmotorBinding(),
    ),
    GetPage(
      name: _Paths.HOMEADMIN,
      page: () => HomeadminView(),
      binding: HomeadminBinding(),
    ),
    GetPage(
      name: _Paths.CREATEMERKMOBIL,
      page: () => const CreatemerkmobilView(),
      binding: CreatemerkmobilBinding(),
    ),
    GetPage(
      name: _Paths.MERKMOBILADMIN,
      page: () => const MerkmobiladminView(),
      binding: MerkmobiladminBinding(),
    ),
  ];
}
