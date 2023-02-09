import 'package:get/get.dart';

import '../controllers/modelmotor_controller.dart';

class ModelmotorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModelmotorController>(
      () => ModelmotorController(),
    );
  }
}
