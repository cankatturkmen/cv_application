import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:cv_application/controllers/MenuController.dart';
import 'package:cv_application/responsive.dart';

import '../../../constants.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      SvgPicture.asset("assets/icons/logo.svg"),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      Socal(),
                    ],
                  ),

                  // if (Responsive.isDesktop(context))
                  //   SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
