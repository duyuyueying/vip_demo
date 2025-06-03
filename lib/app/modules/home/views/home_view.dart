import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/modules/home/views/activity_view.dart';
import 'package:vipapp/app/modules/home/views/tuijian_view.dart';
import 'package:vipapp/app/widgets/bottomNavigation.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
          () => Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color:
                  controller.currTab['bgColor'] != null
                      ? controller.currTab['bgColor']
                      : Colors.transparent,
              image:
                  (controller.currTab['bgImage'] ?? '').toString().isNotEmpty
                      ? DecorationImage(
                        image: NetworkImage(controller.currTab['bgImage']),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment(0, 0.72),
                      )
                      : null,
            ),
          ),
        ),
        title: InkWell(
          onTap: () {
            print('点击了');
          },
          child: Container(
            width: 882.w,
            height: 105.h,
            // backgroundColor: Colors.white,
            padding: EdgeInsets.only(left: 25.w),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color.fromRGBO(254, 0, 152, 1),
                width: 5.h,
              ),
              borderRadius: BorderRadius.circular(30.w),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 54.w,
                        color: Color.fromRGBO(255, 7, 119, 1),
                      ),
                      SizedBox(width: 15.w),
                      Text(
                        '双饮杯',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  color: Color.fromRGBO(152, 152, 152, 1),
                  padding: EdgeInsets.zero,
                  iconSize: 58.w,
                  onPressed: () {
                    print('拍照');
                  },
                  icon: Icon(Icons.camera_alt_outlined),
                ),
              ],
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              print('去签到页面');
            },
            child: Image.asset(
              "assets/images/qiandao.png",
              width: 70.w,
              height: 84.h,
            ),
          ),
          InkWell(
            onTap: () {
              print("去通知页面");
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomBottomNavigationBarItem(
                Icons.notifications_outlined,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(0),
      body: Column(
        children: [
          Obx(
            () => Container(
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                color:
                    controller.currTab['bgColor'] != null
                        ? controller.currTab['bgColor']
                        : Colors.transparent,
                image:
                    (controller.currTab['bgImage'] ?? '').toString().isNotEmpty
                        ? DecorationImage(
                          image: NetworkImage(controller.currTab['bgImage']),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment(0, 1),
                        )
                        : null,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 100.w),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:
                          controller.pageTabs
                              .asMap()
                              .entries
                              .map(
                                (entry) => InkWell(
                                  onTap: () {
                                    controller.pageIndex.value = entry.key;
                                    controller.currTab.value = entry.value;
                                    controller.pageController.animateToPage(
                                      entry.key,
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                    );
                                    print('点击了推荐${entry.key}');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 40.w,
                                    ),
                                    alignment: Alignment.center,

                                    child: Text(
                                      entry.value['title'] as String,

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            controller.pageIndex == entry.key
                                                ? 50.sp
                                                : 44.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0.h,
                    child: InkWell(
                      onTap:
                          () => {
                            // TODO: GOTO 分类页面
                          },
                      child: Container(
                        height: 100.h,
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withAlpha(10),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(-1, 0),
                            ),
                          ],
                          color:
                              controller.currTab['bgColor'] != null
                                  ? controller.currTab['bgColor']
                                  : Colors.transparent,
                          // borderRadius: BorderRadius.circular(30.w),
                        ),
                        child: Icon(
                          Icons.menu,
                          size: 54.h,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller.pageController,
              children: [
                TuijianView(),
                ActivityView(),
                Container(
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Text('1'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text('2'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text('3'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                  child: Text('4'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.purple),
                  child: Text('5'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.orange),
                  child: Text('6'),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.pink),
                  child: Text('7'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
