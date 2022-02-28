import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/qr_controller.dart';
import '../styles/text_styles.dart';

class QRScanner extends GetView<QRController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _flashBtn,
      body: Stack(children: [controller.qrReader, _backButton, _qrResult]),
    );
  }

  get _backButton {
    return Positioned(
      top: 25,
      left: 10,
      child: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white, size: 25),
        onPressed: () => Get.back(),
      ),
    );
  }

  get _qrResult {
    return Positioned(
      bottom: 80,
      left: 0,
      right: 0,
      child: Obx(
        () => Center(
            child: (controller.result.value != null)
                ? Text('${controller.result.value!.code}',
                    style: CustomTextStyles.scannerTextStyle)
                : Text('Try scanning a QR code',
                    style: CustomTextStyles.scannerTextStyle)),
      ),
    );
  }

  get _flashBtn {
    return FloatingActionButton(
      onPressed: () => controller.toggleFlash(),
      child: Obx(
        () => Icon(controller.flashIcon.value, size: 25),
      ),
    );
  }
}
