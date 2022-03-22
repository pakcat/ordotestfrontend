import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ordomobile/controller/checkoutC.dart/checkoutC.dart';
import 'package:ordomobile/ui/screen/checkout/widget/checkoutitem.dart';
import 'package:sizer/sizer.dart';

class CheckoutPage extends GetView<CheckoutController> {
  final List<Widget> chekoutitems = [
    ChekoutItems(
      image: 'assets/images/8.png',
      name: 'Tas Gucci',
    ),
    ChekoutItems(
      image: 'assets/images/6.png',
      name: 'Tas Eiger',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FEF9F9"),
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
                      'Checkout',
                      style: TextStyle(
                          color: HexColor("#64A1F4"),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding:
            EdgeInsets.only(left: 6.0.w, right: 6.0.w, bottom: 7.0.w, top: 1.w),
        children: [
          ListView.builder(
              shrinkWrap: true,
              clipBehavior: Clip.none,
              physics: ScrollPhysics(),
              itemCount: chekoutitems.length,
              itemBuilder: (BuildContext context, int index) {
                return chekoutitems[index];
              }),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(
                top: 6.sp, left: 10.sp, right: 10.sp, bottom: 14.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.sp),
                  child: Text(
                    "Catatan Pesanan",
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: HexColor("#000000").withOpacity(0.5),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: HexColor('#8A7F7F'),
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400),
                  maxLines: 4,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          EdgeInsets.only(top: 2.sp, bottom: 8.sp, left: 8.sp),
                      hintText: "Ketik disini...",
                      hintStyle: TextStyle(
                          color: HexColor('#CDCDCD'),
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.sp),
                        borderSide: BorderSide(
                            color: HexColor("#CDCDCD").withOpacity(0.5)),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h, bottom: 1.h),
            child: Text(
              "Detail Pembayaran",
              style: CheckoutHeader(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Text(
              "Tas Gucci",
              style: CheckoutHeader(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Qty. 1",
                style: Desc(),
              ),
              Text(
                "Rp 75.000",
                style: Desc(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Text(
              "Tas Eiger",
              style: CheckoutHeader(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Qty. 1",
                style: Desc(),
              ),
              Text("Rp 75.000", style: Desc())
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Ongkos Kirim", style: Desc()),
                Text("Rp 10.000", style: Desc())
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: Container(
              height: 1.sp,
              color: HexColor("#000000").withOpacity(0.1),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sub Total",
                style: CheckoutHeader(),
              ),
              Text(
                "Rp 450.000",
                style: CheckoutHeader(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: buttoncheckout("Waktu Pengantaran"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: buttoncheckout("Alamat Pengiriman"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15.sp, horizontal: 6.sp),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: HexColor("#BC9F9F").withOpacity(0.25),
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
                  borderRadius: BorderRadius.circular(8.sp)),
              child: Text(
                "Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10.5.sp,
                    color: HexColor("#47623F"),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0.h, left: 5.w, right: 5.w),
            child: InkWell(
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 12.sp, vertical: 7.sp),
                decoration: ShapeDecoration(
                    color: HexColor('#3C7DD9'), shape: StadiumBorder()),
                child: Text(
                  "Bayar Sekarang",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell buttoncheckout(String text) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 5.sp),
        decoration:
            ShapeDecoration(color: HexColor('#3C7DD9'), shape: StadiumBorder()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 9.5.sp,
                  color: Colors.white),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  TextStyle Desc() => TextStyle(fontSize: 9.5.sp, fontWeight: FontWeight.w400);

  TextStyle CheckoutHeader() =>
      TextStyle(fontWeight: FontWeight.w600, fontSize: 9.5.sp);
}
