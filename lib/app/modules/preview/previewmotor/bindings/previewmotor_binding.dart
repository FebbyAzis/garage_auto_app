import 'package:get/get.dart';

import '../controllers/previewmotor_controller.dart';

class PreviewmotorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewmotorController>(
      () => PreviewmotorController(),
    );
  }
}
