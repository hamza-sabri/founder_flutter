import 'package:get/get.dart';

import '../controllers/qr_controller.dart';

class Binder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRController>(() => QRController());
  }
}
