import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentpage = 0.obs;
  CarouselController cC = CarouselController();
  onChangedCarousel(index) {
    currentpage.value = index;
  }
}
