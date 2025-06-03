import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vipapp/app/modules/carts/controllers/carts_controller.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  CustomBottomNavigationBarItem(
    this.icon, {
    super.key,
    this.activeIcon,
  });
  final IconData icon;
  final IconData? activeIcon;

  final CartsController cartsController = Get.put(CartsController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(icon),
        Obx(
          () =>
              cartsController.count.value > 0
                  ? Positioned(
                    right: -20.w,
                    top: -20.w,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 7, 119, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      width: 40.w,
                      height: 40.w,
                      child: Text(
                        cartsController.count.value.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                  : const SizedBox(),
        ),
      ],
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(this.currentIndex, {super.key});
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Theme.of(context).dividerColor)),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          const routes = ["/home", "/favorite", "/super-v", "/carts", "/user"];
          Get.offAndToNamed(routes[index]);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "收藏"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "超v专享"),
          BottomNavigationBarItem(
            icon: CustomBottomNavigationBarItem(Icons.shopping_cart),
            label: "购物车",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "个人中心"),
        ],
      ),
    );
  }
}
