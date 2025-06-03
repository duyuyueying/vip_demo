import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:vipapp/app/utils/theme/themeUtils.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(1170, 2532),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:
          (context, child) => GetMaterialApp(
            title: "Application",
            themeMode: ThemeMode.light,
            darkTheme: ThemeUtils.darkTheme(),
            theme: ThemeUtils.lightTheme(),
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          ),
    ),
  );
}
