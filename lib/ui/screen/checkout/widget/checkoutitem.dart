import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ordomobile/controller/checkoutC.dart/checkoutC.dart';
import 'package:sizer/sizer.dart';

class ChekoutItems extends StatelessWidget {
  const ChekoutItems({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    RxInt count = 0.obs;
    bool isVisible = false;
    CheckoutController controller = Get.put(CheckoutController());
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: <Widget>[
          CustomSlidableAction(
              onPressed: doNothing,
              autoClose: true,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.only(top: 20.sp),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      padding: EdgeInsets.all(9.sp),
                      decoration: ShapeDecoration(
                          shape: CircleBorder(), color: HexColor("#64A1F4")),
                      child: ImageIcon(
                        AssetImage("assets/icons/trash.png"),
                        size: 15.sp,
                      )),
                ),
              ))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.0.sp),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 15.sp),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 12,
                      spreadRadius: 1,
                      offset: Offset(0, 4)),
                ],
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(4.sp),
                            height: 55.sp,
                            width: 55.sp,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 12,
                                      spreadRadius: 1,
                                      offset: Offset(0, 0)),
                                ],
                                shape: BoxShape.circle),
                            child: Image(image: AssetImage(image))),
                        Padding(
                          padding: EdgeInsets.only(left: 8.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.sp),
                                child: Text(
                                  name,
                                  style: GoogleFonts.inter(
                                      fontSize: 11.6.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                "Rp 75.000",
                                style: TextStyle(
                                    fontSize: 9.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: HexColor("#64A1F4")),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Obx(() => Container(
                              decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: (count.value > 0)
                                      ? HexColor("#3C7DD9")
                                      : HexColor("#64A1F4")),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      count = controller.OnMinus(count);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.sp),
                                      child: Text(
                                        "-",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11.6,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 2.sp),
                                    child: Text(
                                      "${count.value}",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 9.5.sp,
                                          color: Colors.white),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      count = controller.OnPlus(count);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5.sp),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.inter(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 11.6,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 8.sp),
                          child: InkWell(
                            onTap: (() {
                              isVisible = controller.toggle(isVisible);
                            }),
                            child: GetBuilder<CheckoutController>(
                              init: CheckoutController(),
                              initState: (_) {},
                              builder: (_) {
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.sp, vertical: 3.sp),
                                  decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: (isVisible == true)
                                          ? HexColor("3C7DD9")
                                          : HexColor("64A1F4")),
                                  child: Row(
                                    children: [
                                      ImageIcon(
                                        AssetImage("assets/icons/pen.png"),
                                        size: 8.sp,
                                        color: Colors.white,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.sp),
                                        child: (isVisible == true)
                                            ? Text(
                                                "Hapus Catatan",
                                                style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 9.5.sp,
                                                    color: Colors.white),
                                              )
                                            : Text(
                                                "Catatan",
                                                style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 9.5.sp,
                                                    color: Colors.white),
                                              ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          ),
          GetBuilder<CheckoutController>(
            init: CheckoutController(),
            initState: (_) {},
            builder: (_) {
              return Padding(
                padding: EdgeInsets.only(bottom: 3.h),
                child: Visibility(
                    visible: isVisible,
                    maintainSize: false,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.only(
                          bottom: 10.sp, left: 10.sp, right: 10.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.sp, top: 6.sp),
                            child: Text(
                              "Catatan Item",
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: HexColor("#000000").withOpacity(0.5),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          TextField(
                            maxLines: 2,
                            controller: controller.textC,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: HexColor('#8A7F7F'),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                                isDense: true,
                                contentPadding:
                                    EdgeInsets.only(bottom: 8.sp, left: 8.sp),
                                hintText: "Ketik disini...",
                                hintStyle: TextStyle(
                                    color: HexColor('#CDCDCD'),
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w400),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.sp),
                                  borderSide: BorderSide(
                                      color:
                                          HexColor("#CDCDCD").withOpacity(0.5)),
                                )),
                          )
                        ],
                      ),
                    )),
              );
            },
          )
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}
