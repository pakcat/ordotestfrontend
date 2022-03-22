import 'package:get/get.dart';
import 'package:ordomobile/controller/details/detailsC.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() => DetailsController());
  }
}
