import 'package:get/get.dart';

import '../controllers/super_v_controller.dart';

class SuperVBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SuperVController>(
      () => SuperVController(),
    );
  }
}
