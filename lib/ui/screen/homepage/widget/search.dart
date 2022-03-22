import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import 'gradient.dart';

TextField Search() {
  return TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: HexColor("#F0F0F0"),
      prefixIconConstraints: BoxConstraints(
        minWidth: 10,
        minHeight: 10,
      ),
      hintText: "Cari dengan mengetik barang",
      contentPadding: EdgeInsets.only(top: 4.sp),
      isDense: true,
      hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 7.5.sp,
          color: HexColor("#010101").withOpacity(0.21)),
      prefixIcon: Padding(
        padding: EdgeInsets.all(8.sp),
        child: Container(
          width: 10.sp,
          height: 10.sp,
          child: FittedBox(
              fit: BoxFit.cover,
              child: RadiantGradientMask(
                child: ImageIcon(
                  AssetImage("assets/icons/search.png"),
                  color: Colors.white,
                ),
              )),
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.sp),
          borderSide: BorderSide(color: Colors.transparent)),
    ),
  );
}
