import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Container imageCarouselDetails(String image) {
  return Container(
    width: 50.w,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image))),
  );
}
