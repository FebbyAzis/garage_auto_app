import 'package:get/get.dart';

import '../controllers/merkmobil_controller.dart';

class MerkmobilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MerkmobilController>(
      () => MerkmobilController(),
    );
  }
}
