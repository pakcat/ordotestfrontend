import 'package:get/get.dart';

class BotNavController extends GetxController {
  RxInt selected = 2.obs;
  onChanged(index) {
    selected.value = index;
  }
}
