import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ordomobile/controller/details/detailsC.dart';
import 'package:ordomobile/routes/app_routes.dart';
import 'package:ordomobile/ui/screen/details/widget/comments.dart';
import 'package:sizer/sizer.dart';

import 'widget/imageslider.dart';

class DetailsPage extends GetView<DetailsController> {
  final List<Widget> comments = [
    Comments(
      imageprofile: 'assets/images/profil1.png',
      name: 'Maude Hall',
    ),
    Comments(
      imageprofile: 'assets/images/profil2.png',
      name: 'Ester Howard',
    )
  ];

  DetailsController DetailC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#FCF8F8"),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.w, right: 3.5.w),
                        child: InkWell(
                            onTap: (() {
                              Get.back();
                            }),
                            child: Container(
                              padding: EdgeInsets.all(5.sp),
                              decoration: ShapeDecoration(
                                  color: HexColor('#64A1F4'),
                                  shape: CircleBorder()),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: ImageIcon(
                                  AssetImage("assets/icons/back.png"),
                                  size: 6.sp,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                      Text(
                        'PRODUK DETAIL',
                        style: GoogleFonts.poppins(
                            color: HexColor("#64A1F4"),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.CHECKOUT);
                          },
                          child: Icon(
                            Icons.shopping_bag,
                            color: HexColor("#64A1F4"),
                            size: 19.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.notifications,
                            color: HexColor("#FF485A"),
                            size: 19.sp,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.5.h),
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                      autoPlay: true,
                      viewportFraction: 1,
                      aspectRatio: 2.0,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        DetailC.onChangedCarouselonDetails(index);
                      }),
                  carouselController: DetailC.cdetailsC,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      imageCarouselDetails(DetailC.image)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(3, (int index) {
                    return Obx(() => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 4.sp,
                        width: (index == DetailC.currentpage.value)
                            ? 15.sp
                            : 20.sp,
                        margin: EdgeInsets.symmetric(horizontal: 1.3.sp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == DetailC.currentpage.value)
                                ? HexColor('#64A1F4')
                                : HexColor("#3C7DD9"))));
                  })),
            ),
            Padding(
              padding: EdgeInsets.only(top: 7.h),
              child: Stack(
                children: [
                  Container(
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        color: HexColor("#FF4759"),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40.sp))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.4.h),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 18.sp, horizontal: 7.w),
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.sp))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Tas Gucci",
                                style: GoogleFonts.poppins(
                                    color: HexColor("#47623F"),
                                    fontSize: 12.2.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0.sp),
                                    child: label("Barang Bekas", "#DFAE1D"),
                                  ),
                                  label("Stok 100", "#64A1F4"),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rp 126.000",
                                      style: TextStyle(
                                          color: HexColor("#64A1F4"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    Text(
                                      "Rp 100.500",
                                      style: GoogleFonts.poppins(
                                          color: HexColor("#3C7DD9"),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11.6.sp),
                                    ),
                                  ],
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.sp, vertical: 1.sp),
                                    decoration: ShapeDecoration(
                                        shape: StadiumBorder(),
                                        color: HexColor("#3C7DD9")),
                                    child: Text(
                                      "Diskon 10%",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.5.h),
                            child: Container(
                              height: 1.sp,
                              color: HexColor("#000000").withOpacity(0.1),
                            ),
                          ),
                          StyleHeader("Vendor"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 10.sp),
                                      height: 25.sp,
                                      width: 25.sp,
                                      decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/eiger.png")),
                                      ),
                                    ),
                                    Text(
                                      "Eiger Store",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 9.5.sp),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 4.0.sp),
                                    child: ImageIcon(
                                        AssetImage("assets/icons/star.png"),
                                        size: 14.sp,
                                        color: HexColor("#64A1F4")),
                                  ),
                                  Text("5.0",
                                      style: TextStyle(
                                          color: HexColor("#3C7DD9"),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 9.5.sp)),
                                  Text(
                                    " | ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#3C7DD9"),
                                    ),
                                  ),
                                  Text("200 Terjual",
                                      style: TextStyle(
                                          color: HexColor("#3C7DD9"),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 9.5.sp)),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.5.h, bottom: 1.h),
                            child: StyleHeader("Deskripsi"),
                          ),
                          Text(
                            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                            textAlign: TextAlign.justify,
                            maxLines: 5,
                            style: TextStyle(
                                fontSize: 9.5.sp, color: HexColor('#47623F')),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.5.h, bottom: 1.h),
                            child: StyleHeader("Ulasan dan Penilaian"),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              padding: const EdgeInsets.all(8),
                              itemCount: comments.length,
                              itemBuilder: (BuildContext context, int index) {
                                return comments[index];
                              })
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }

  Text StyleHeader(String text) {
    return Text(
      text,
      style: TextStyle(
          color: HexColor("#47623F"),
          fontWeight: FontWeight.w600,
          fontSize: 9.5.sp),
    );
  }

  Container label(String text, String color) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
        decoration:
            ShapeDecoration(shape: StadiumBorder(), color: HexColor(color)),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 8.sp, fontWeight: FontWeight.w500),
        ));
  }
}
