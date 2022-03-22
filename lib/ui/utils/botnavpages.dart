import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ordomobile/controller/utilsC/botnavC.dart';
import 'package:ordomobile/ui/screen/homepage/homepage.dart';
import 'package:ordomobile/ui/screen/pages/page1.dart';
import 'package:ordomobile/ui/screen/pages/page2.dart';
import 'package:ordomobile/ui/screen/pages/page3.dart';
import 'package:ordomobile/ui/screen/pages/page4.dart';
import 'package:sizer/sizer.dart';

import 'widget/botnavitem.dart';

class BotNavPage extends GetView<BotNavController> {
  BotNavController botnavC = Get.put(BotNavController());
  final List<Widget> pages = [
    PageOne(),
    PageTwo(),
    HomePage(),
    PageThree(),
    PageFour()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx((() => pages[botnavC.selected.value])),
        bottomNavigationBar: Obx(
          () => SizedBox(
            height: 12.h,
            child: (BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BotNavItem("assets/icons/1.png"),
                BotNavItem("assets/icons/2.png"),
                BotNavItem("assets/icons/3.png"),
                BotNavItem("assets/icons/4.png"),
                BotNavItem("assets/icons/5.png"),
              ],
              elevation: 0,
              currentIndex: botnavC.selected.value,
              selectedItemColor: HexColor("#47623F"),
              onTap: botnavC.onChanged,
              unselectedItemColor: HexColor("#C6C4C4"),
              type: BottomNavigationBarType.fixed,
              iconSize: 14.sp,
            )),
          ),
        ));
  }
}
