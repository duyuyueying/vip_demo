import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/widgets/bottomNavigation.dart';

import '../controllers/super_v_controller.dart';

class SuperVView extends GetView<SuperVController> {
  const SuperVView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SuperVView'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigation(2),
      body: const Center(
        child: Text(
          'SuperVView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
