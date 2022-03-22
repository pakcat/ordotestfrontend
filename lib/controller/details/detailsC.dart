import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  String image = Get.arguments;
  RxInt currentpage = 0.obs;
  CarouselController cdetailsC = CarouselController();
  onChangedCarouselonDetails(index) {
    currentpage.value = index;
  }
}
