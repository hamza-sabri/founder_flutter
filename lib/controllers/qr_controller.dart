import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRController extends GetxController {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR'); // QR Key
  late Widget qrReader; // This is the main reader for the QR code

  // The overlay is just to style the QR scanning area
  final overlay = QrScannerOverlayShape(
    cutOutSize: Get.size.width * .9,
    borderColor: Colors.blue,
    borderRadius: 20.0,
    borderWidth: 10,
  );

  late QRViewController? qrViewController; // main controller
  Rx<Barcode?> result = new Rx<Barcode?>(null);
  Rx<IconData> flashIcon = new Rx<IconData>(Icons.flash_on);

  Future<void> toggleFlash() async {
    if (flashIcon.value == Icons.flash_on) {
      flashIcon.value = Icons.flash_off;
    } else {
      flashIcon.value = Icons.flash_on;
    }
    await qrViewController!.toggleFlash();
  }

  void _qrReady(controller) {
    this.qrViewController = controller;
    controller.scannedDataStream.listen((scanData) => result.value = scanData);
  }

  @override
  void onInit() {
    qrReader = QRView(key: qrKey, overlay: overlay, onQRViewCreated: _qrReady);
    super.onInit();
  }

  @override
  void dispose() {
    qrViewController?.dispose();
    super.dispose();
  }

  @override
  void onReady() {
    if (Platform.isAndroid) {
      qrViewController!.pauseCamera();
    } else if (Platform.isIOS) {
      qrViewController!.resumeCamera();
    }
    super.onReady();
  }
}
