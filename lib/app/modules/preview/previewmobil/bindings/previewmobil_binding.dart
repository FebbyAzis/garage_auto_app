import 'package:get/get.dart';

import '../controllers/previewmobil_controller.dart';

class PreviewmobilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreviewmobilController>(
      () => PreviewmobilController(),
    );
  }
}
