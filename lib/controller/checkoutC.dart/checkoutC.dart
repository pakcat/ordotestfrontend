import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  TextEditingController textC = TextEditingController();
  OnPlus(count) {
    count++;
    update();
    return count;
  }

  toggle(bool isVisible) {
    isVisible = !isVisible;
    update();
    return isVisible;
  }

  OnMinus(count) {
    if (count != 0) {
      count--;
      update();
      return count;
    } else {
      return count;
    }
  }
}
