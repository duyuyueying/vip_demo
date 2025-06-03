import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/widgets/bottomNavigation.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FavoriteView'), centerTitle: true),
      bottomNavigationBar: BottomNavigation(1),
      body: const Center(
        child: Text('FavoriteView is working', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
