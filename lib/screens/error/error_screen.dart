import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cv_application/controllers/MenuController.dart';
import 'package:cv_application/screens/home/home_screen.dart';

import '../../constants.dart';

class ErrorScreen extends StatelessWidget {
  //final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: Center(
                child: Text("error"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
