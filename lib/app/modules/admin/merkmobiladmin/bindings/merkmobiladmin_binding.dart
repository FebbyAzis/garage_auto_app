import 'package:get/get.dart';

import '../controllers/merkmobiladmin_controller.dart';

class MerkmobiladminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MerkmobiladminController>(
      () => MerkmobiladminController(),
    );
  }
}
