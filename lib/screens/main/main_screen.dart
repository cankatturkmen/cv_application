import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:cv_application/controllers/MenuController.dart';
import 'package:cv_application/screens/home/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class MainScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) return Scaffold(); //mobile

    if (kIsWeb)
      return Scaffold(
        key: _controller.scaffoldkey,
        drawer: SideMenu(),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              backgroundColor: const Color(0xff1c0436),
              pinned: true,
              floating: false,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    _controller.openOrCloseDrawer();
                  }),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.github),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.youtube),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () {}),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
                  ],
                ),
              ],
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/4bb82b72535211.5bead62fe26d5.jpg'), //your image
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50),
                  ),
                ),
                child: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: false,
                  title: Text('Cankat Turkmen'),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: SafeArea(child: HomeScreen()),
                  ),
                ],
              )
            ]))

            //  SliverStickyHeader(header: Header(), sliver: Sliver(

            //  ),),
          ],

          // child: Column(
          //   children: [
          //     Header(),
          // Container(
          //   padding: EdgeInsets.all(kDefaultPadding),
          //   constraints: BoxConstraints(maxWidth: kMaxWidth),
          //   child: SafeArea(child: HomeScreen()),
          // ),
          //   ],
          // ),
        ),
      );
  }
}
