import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordomobile/routes/app_pages.dart';
import 'package:ordomobile/routes/app_routes.dart';
import 'package:ordomobile/ui/screen/checkout/checkoutpage.dart';
import 'package:ordomobile/ui/theme/apptheme.dart';
import 'package:ordomobile/ui/utils/botnavpages.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.INITIAL,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        home: BotNavPage(),
      );
    });
  }
}
