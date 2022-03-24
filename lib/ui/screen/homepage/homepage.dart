import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ordomobile/controller/homeC/homeC.dart';
import 'package:ordomobile/ui/screen/homepage/widget/button.dart';
import 'package:ordomobile/ui/screen/homepage/widget/imagesslider.dart';
import 'package:ordomobile/ui/screen/homepage/widget/products.dart';
import 'package:ordomobile/ui/screen/homepage/widget/search.dart';
import 'package:sizer/sizer.dart';

class HomePage extends GetView<HomeController> {
  @override
  HomeController homeC = Get.put(HomeController());
  final List<Widget> imagescarousel = [
    imageCarousel(),
    imageCarousel(),
    imageCarousel()
  ];

  final List<Widget> product_item = [
    ProductItem(image: "assets/images/1.png", color: "#E1F3D9"),
    ProductItem(image: "assets/images/2.png", color: "#64A1F4"),
    ProductItem(image: "assets/images/3.png", color: "#E1F3D9"),
    ProductItem(image: "assets/images/4.png", color: "#E1F3D9"),
    ProductItem(image: "assets/images/5.png", color: "#DFAE1D"),
    ProductItem(image: "assets/images/6.png", color: "#E1F3D9"),
    ProductItem(image: "assets/images/7.png", color: "#E1F3D9"),
    ProductItem(image: "assets/images/8.png", color: "#E1F3D9"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FCF8F8"),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.5.w),
                child: Container(
                  width: 58.w,
                  child: Search(),
                ),
              ),
              Spacer(
                flex: 1,
              ),
              ButtonHomePage(6.sp, "#64A1F4", "assets/icons/top1.png", 10.sp),
              Spacer(
                flex: 2,
              ),
              ButtonHomePage(4.sp, "#DFAE1D", "assets/icons/top2.png", 14.sp),
              Spacer(
                flex: 2,
              ),
              Padding(
                padding: EdgeInsets.only(right: 1.5.w),
                child: ButtonHomePage(
                    4.sp, "#FF485A", "assets/icons/top3.png", 14.sp),
              )
            ],
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          CarouselSlider.builder(
              options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  aspectRatio: 2.0,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    homeC.onChangedCarousel(index);
                  }),
              carouselController: homeC.cC,
              itemCount: imagescarousel.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      imagescarousel[itemIndex]),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List<Widget>.generate(imagescarousel.length, (int index) {
                  return Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 4.sp,
                      width: (index == homeC.currentpage.value) ? 15.sp : 20.sp,
                      margin: EdgeInsets.symmetric(horizontal: 1.3.sp),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (index == homeC.currentpage.value)
                              ? HexColor('#64A1F4')
                              : HexColor("#3C7DD9"))));
                })),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.w),
            child: AlignedGridView.count(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 6.w,
              crossAxisSpacing: 6.w,
              itemCount: product_item.length,
              itemBuilder: (BuildContext context, int index) {
                return product_item[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
