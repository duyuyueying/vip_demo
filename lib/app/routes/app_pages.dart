import 'package:get/get.dart';

import '../modules/carts/bindings/carts_binding.dart';
import '../modules/carts/views/carts_view.dart';
import '../modules/favorite/bindings/favorite_binding.dart';
import '../modules/favorite/views/favorite_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/superV/bindings/super_v_binding.dart';
import '../modules/superV/views/super_v_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      transition: Transition.noTransition,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      transition: Transition.noTransition,
      page: () => const FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.CARTS,
      transition: Transition.noTransition,
      page: () => const CartsView(),
      binding: CartsBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      transition: Transition.noTransition,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.SUPER_V,
      transition: Transition.noTransition,
      page: () => const SuperVView(),
      binding: SuperVBinding(),
    ),
  ];
}
