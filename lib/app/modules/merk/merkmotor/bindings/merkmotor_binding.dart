import 'package:get/get.dart';

import '../controllers/merkmotor_controller.dart';

class MerkmotorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MerkmotorController>(
      () => MerkmotorController(),
    );
  }
}
