import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

class ActivityView extends GetView {
  const ActivityView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/activiy_banner.jpg',
          width: double.infinity,
          height: 300.h,
          fit: BoxFit.fitWidth,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          height: 300.h,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/activity_banner2.jpg'),fit: BoxFit.fitWidth)),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(color: Colors.red),
              )
            ],
            ),
        ),
      ],
    );
  }
}
