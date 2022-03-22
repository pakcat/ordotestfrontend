import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

InkWell ButtonHomePage(
  double pad,
  String color,
  String image,
  double size,
) {
  return InkWell(
    onTap: (() {}),
    child: Container(
      padding: EdgeInsets.all(pad),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.sp), color: HexColor(color)),
      child: FittedBox(
        fit: BoxFit.cover,
        child: ImageIcon(
          AssetImage(image),
          size: size,
        ),
      ),
    ),
  );
}
