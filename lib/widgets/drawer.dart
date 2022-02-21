import 'package:flutter/material.dart';
import 'package:founder_flutter/styles/decorations.dart';
import 'package:founder_flutter/styles/text_styles.dart';
import 'package:get/get.dart';

class DemoDrawer extends StatelessWidget {
  final styles = CustomTextStyles();
  final decorations = CustomDecorations();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _drawerHeader,
          _drawerCardCreator('Like Button', '/like-btn'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
          _drawerCardCreator('Like Button', '/like-button'),
        ],
      ),
    );
  }

  get _drawerHeader {
    return DrawerHeader(
      child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text('Examples', style: styles.exampleStyle)),
      decoration: decorations.drawerHeader,
    );
  }

  Widget _drawerCardCreator(title, routTo) {
    return ListTile(title: Text(title), onTap: () => Get.toNamed(routTo));
  }
}
