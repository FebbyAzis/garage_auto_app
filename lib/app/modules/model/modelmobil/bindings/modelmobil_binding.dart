import 'package:get/get.dart';

import '../controllers/modelmobil_controller.dart';

class ModelmobilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModelmobilController>(
      () => ModelmobilController(),
    );
  }
}
