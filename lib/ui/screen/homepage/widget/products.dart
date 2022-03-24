import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ordomobile/routes/app_routes.dart';
import 'package:sizer/sizer.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.image,
    required this.color,
  }) : super(key: key);
  final String image;
  final String color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Get.toNamed(Routes.DETAILS, arguments: image);
      }),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: HexColor("#F9C6C6").withOpacity(0.25),
              offset: const Offset(0, 0),
              blurRadius: 6,
              spreadRadius: 0.1 // changes position of shadow
              ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(12.sp)),
        child: Padding(
          padding: EdgeInsets.all(6.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.sp),
                      color: HexColor(color),
                    ),
                    child: AspectRatio(
                      aspectRatio: 3.34 / 2.95,
                      child: Image.asset(image),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 5.sp, top: 2.sp, bottom: 2.sp, right: 6.sp),
                        decoration: BoxDecoration(
                            color: HexColor("#DFAE1D"),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.sp),
                                topRight: Radius.circular(12.sp),
                                bottomRight: Radius.circular(12.sp))),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage("assets/icons/star.png"),
                              color: Colors.white,
                              size: 5.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.sp),
                              child: Text(
                                "5.0",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 4.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.sp),
                              child: Text(
                                "|",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 4.sp),
                              ),
                            ),
                            Text(
                              "200+ rating",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 4.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Rp 6000",
                        style: GoogleFonts.inter(
                            fontSize: 8.sp,
                            color: HexColor("#64A1F4"),
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough)),
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 2.sp, horizontal: 5.5.sp),
                        decoration: ShapeDecoration(
                            shape: StadiumBorder(), color: HexColor('#3C7DD9')),
                        child: Text(
                          "Diskon 1 0%",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 5.sp,
                              fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ),
              Text("Rp 4500",
                  style: GoogleFonts.inter(
                      fontSize: 8.sp,
                      color: HexColor("#3C7DD9"),
                      fontWeight: FontWeight.w800)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.5.h),
                child: Text(
                  "Lorem Ipsum",
                  style: GoogleFonts.poppins(
                      fontSize: 8.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
