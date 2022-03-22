import 'package:get/get.dart';
import 'package:ordomobile/bindings/checkoutbinding.dart';
import 'package:ordomobile/bindings/detailsbinding.dart';
import 'package:ordomobile/controller/details/detailsC.dart';
import 'package:ordomobile/routes/app_routes.dart';
import 'package:ordomobile/ui/screen/checkout/checkoutpage.dart';
import 'package:ordomobile/ui/screen/details/detailspage.dart';
import 'package:ordomobile/ui/screen/homepage/homepage.dart';
import 'package:ordomobile/ui/utils/botnavpages.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => BotNavPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()),
    GetPage(
        name: Routes.CHECKOUT,
        page: () => CheckoutPage(),
        binding: CheckoutBinding()),
  ];
}
