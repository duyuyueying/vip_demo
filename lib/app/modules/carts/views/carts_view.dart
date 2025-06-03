import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/widgets/bottomNavigation.dart';

import '../controllers/carts_controller.dart';

class CartsView extends GetView<CartsController> {
  const CartsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CartsView'), centerTitle: true),
      bottomNavigationBar: BottomNavigation(3),
      body: const Center(
        child: Text('CartsView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
