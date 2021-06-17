import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:cv_application/controllers/MenuController.dart';

import '../../../constants.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 3.5),
                  child: SvgPicture.asset("assets/icons/logo.svg"),
                ),
              ),
              ...List.generate(
                _controller.menuItems.length,
                (index) => DrawerItem(
                  isActive: index == _controller.selectedIndex,
                  title: _controller.menuItems[index],
                  press: () {
                    _controller.setMenuIndex(index);
                  },
                  // color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;
  // final Color color;
  const DrawerItem({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.press,
    //  @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: InkWell(
        hoverColor: Colors.white,
        onTap: () {},
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          selected: isActive,
          selectedTileColor: kPrimaryColor,
          onTap: press,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          hoverColor: Colors.blue,
          enabled: true,
          focusColor: Colors.white,
        ),
      ),
    );
  }
}
