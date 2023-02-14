import 'package:get/get.dart';

import '../controllers/createmerkmobil_controller.dart';

class CreatemerkmobilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreatemerkmobilController>(
      () => CreatemerkmobilController(),
    );
  }
}
