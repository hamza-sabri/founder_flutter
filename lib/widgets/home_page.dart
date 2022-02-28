import 'package:flutter/material.dart';
import 'package:founder_flutter/widgets/drawer.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page title'.tr)),
      drawer: DemoDrawer(),
    );
  }
}
