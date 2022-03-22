import 'package:get/get.dart';
import 'package:ordomobile/controller/checkoutC.dart/checkoutC.dart';

class CheckoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckoutController>(() => CheckoutController());
  }
}
