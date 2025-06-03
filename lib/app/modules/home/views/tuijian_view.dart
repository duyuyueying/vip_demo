import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/modules/home/controllers/home_controller.dart';

class TuijianView extends GetView {
  TuijianView({super.key});
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 580.h,
          padding: EdgeInsets.only(top: 190.h, left: 50.w, right: 50.w),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tuijian_banner_bg.png'),
              fit: BoxFit.fitWidth,
              // alignment: Alignment.,
            ),
          ),
          child: Obx(
            () => Row(
              spacing: 25.w,
              children:
                  controller.fastShoppingRecomList
                      .map(
                        (e) => InkWell(
                          onTap: (){
                            // 跳转到闪购主页
                            // Get.toNamed(AppRoutes.PRODUCT_CONTENT, arguments: e);
                          },
                          child: Expanded(
                            child: Container(
                              height: 320.h,
                              clipBehavior: Clip.hardEdge,
                              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 25.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Column(
                                children: [
                                  
                                  Container( clipBehavior: Clip.hardEdge, decoration: BoxDecoration(borderRadius:  BorderRadius.circular(30.r)) , child: Image.asset(e.image, width: 250.w, height: 250.w,)),
                                  // Text(e.title),
                                  Text(e.price, style: TextStyle(fontSize: 20.sp, color: Colors.red),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
        Container(
          height: 538.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tuijian_banner2.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }
}
