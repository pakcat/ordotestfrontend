import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class Comments extends StatelessWidget {
  final String imageprofile;
  final String name;

  const Comments({
    Key? key,
    required this.imageprofile,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Container(
        padding: EdgeInsets.all(8.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.sp),
          boxShadow: [
            BoxShadow(
                color: HexColor("#B9B8B8").withOpacity(0.25),
                blurRadius: 12,
                spreadRadius: 1,
                offset: Offset(0, 4)),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(-6, 0),
              blurRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(6, 0),
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.sp),
                      height: 25.sp,
                      width: 25.sp,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imageprofile)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.inter(
                              fontSize: 9.sp, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "14 min",
                          style: GoogleFonts.inter(
                              fontSize: 7.sp,
                              fontWeight: FontWeight.w500,
                              color: HexColor("#B4BBC6")),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 4.0.sp),
                      child: ImageIcon(AssetImage("assets/icons/star.png"),
                          size: 10.sp, color: HexColor("#FA4A0C")),
                    ),
                    Text(
                      "5.0",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 9.sp),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.0.h),
              child: Text(
                "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback.",
                textAlign: TextAlign.justify,
                maxLines: 2,
                style: GoogleFonts.inter(
                    fontSize: 7.5.sp,
                    height: 1.sp,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#272727")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
