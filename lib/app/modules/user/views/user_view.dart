import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/widgets/bottomNavigation.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserView'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigation(4),
      body: const Center(
        child: Text(
          'UserView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
