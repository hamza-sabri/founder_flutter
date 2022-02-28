import 'package:flutter/material.dart';
import 'package:founder_flutter/widgets/like_btn.dart';
import 'package:founder_flutter/widgets/qr_scanner.dart';
import 'package:get/get.dart';

import 'binders/controllers_binder.dart';
import 'themes/app_theme.dart';
import 'widgets/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().generalTheme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/like-btn', page: () => LikeBtnExample()),
        GetPage(name: '/qr-reader', page: () => QRScanner(), binding: Binder()),
        // GetPage(name: '/slimy-card', page: () => SlimyExample()),
      ],
    );
  }
}
