import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanner extends StatefulWidget {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  final overlay = QrScannerOverlayShape(
    cutOutSize: Get.size.width * .9,
    borderColor: Colors.blue,
    borderRadius: 20.0,
    borderWidth: 10,
  );
  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  QRViewController? controller;
  Barcode? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(), body: Column(children: [myQR, resultContainer]));
  }

  get myQR {
    return Expanded(
        flex: 9,
        child: QRView(
            key: widget.qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: widget.overlay));
  }

  get resultContainer {
    return Expanded(
        flex: 1,
        child: Center(
            child: (result != null)
                ? Text('Barcode Type: Data: ${result!.code}')
                : Text('Scan a code')));
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
