import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

Container imageCarousel() {
  return Container(
    width: 88.w,
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/imageslider.png"))),
  );
}
