import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slimy_card/slimy_card.dart';

import '../styles/text_styles.dart';

// ignore: must_be_immutable
class SlimyExample extends StatelessWidget {
  CustomTextStyles styles = CustomTextStyles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slimy Card')),
      body: Stack(children: [
        SizedBox(width: Get.size.width, height: Get.size.height),
        Positioned(top: Get.size.width * .5, left: 0, right: 0, child: _slimy),
      ]),
    );
  }

  get _slimy {
    return SlimyCard(
      color: Color(0xff5559FC),
      width: Get.size.width * .9,
      topCardHeight: 150,
      bottomCardHeight: 180,
      topCardWidget: _topChild,
      bottomCardWidget: _bottomChild,
    );
  }

  get _topChild {
    return Container(
      child: Text('Click me 👌', style: styles.exampleStyle),
    );
  }

  get _bottomChild {
    return Container(
      child: Text('Cool, right! 👌😎', style: styles.exampleStyle),
    );
  }
}
