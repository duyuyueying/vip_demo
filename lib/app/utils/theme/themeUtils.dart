// 主题系统工具
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vipapp/app/utils/theme/tagThemeExtension.dart';

class ThemeUtils {
  static ThemeData lightTheme() => ThemeData(
    primaryColor: Color.fromRGBO(245, 23, 209, 1),
    // primaryColor: Color.fromRGBO(254, 0, 152, 1),
    scaffoldBackgroundColor: Color.fromRGBO(247, 247, 247, 1),
    dividerColor: Color.fromRGBO(208, 206, 206, 1),
    colorScheme: colorScheme(),
    textTheme: textTheme(),
    cardTheme: cardTheme(),
    buttonTheme: buttonThemeData(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    textButtonTheme: textButtonThemeData(),
    outlinedButtonTheme: outlinedButtonThemeData(),
    inputDecorationTheme: inputDecorationTheme(),
    iconTheme: IconThemeData(
      color: Color.fromRGBO(27, 27, 27, 1),
    ) ,
    appBarTheme: appBarTheme(),
    bottomNavigationBarTheme: bottomNavigationBarTheme(),
    tabBarTheme: tabBarTheme(),
    dialogTheme: dialogTheme(),
    snackBarTheme: snackBarTheme(),
    // extensions: [tagThemeExtension(),],
    
  );

  static ThemeData darkTheme() => ThemeData.dark().copyWith();

  static ColorScheme colorScheme() => ColorScheme.light(
    primary: Color.fromRGBO(245, 23, 209, 1),
    
    // primaryColor: Color.fromRGBO(254, 0, 152, 1),
    // primaryColor: Color.fromRGBO(255, 7, 119, 1),
    secondary: Color.fromRGBO(245, 23, 209, 1),
    surface: Color.fromRGBO(247, 247, 247, 1),
    onPrimary: Color.fromRGBO(255, 255, 255, 1),
    onSecondary: Color.fromRGBO(255, 255, 255, 1),
    onSurface: Color.fromRGBO(0, 0, 0, 1),
    error: Color.fromRGBO(245, 23, 209, 1),
  );

  static TextTheme textTheme() => TextTheme(
    labelMedium: TextStyle(
      fontSize: 40.sp,
      color: Color.fromRGBO(27, 27, 27, 1),
    )
  );

  static CardTheme cardTheme() => CardTheme(
  );
  static ButtonThemeData buttonThemeData() => ButtonThemeData(
  );
  static ElevatedButtonThemeData elevatedButtonThemeData() => ElevatedButtonThemeData(
  );
  static TextButtonThemeData textButtonThemeData() => TextButtonThemeData(
  );
  static OutlinedButtonThemeData outlinedButtonThemeData() => OutlinedButtonThemeData(
  ); 
  static InputDecorationTheme inputDecorationTheme() => InputDecorationTheme(
  );
  static AppBarTheme appBarTheme() => AppBarTheme(
  );
  static BottomNavigationBarThemeData bottomNavigationBarTheme() => BottomNavigationBarThemeData(
    backgroundColor: Color.fromRGBO(249, 249, 249, 1),
    unselectedItemColor: Color.fromRGBO(27, 27, 27, 1),
    selectedItemColor: Color.fromRGBO(245, 23, 209, 1),
    unselectedLabelStyle: TextStyle(fontSize: 28.sp),
    selectedLabelStyle: TextStyle(fontSize: 28.sp),
  );
  static TabBarTheme tabBarTheme() => TabBarTheme(
  );
  static DialogTheme dialogTheme() => DialogTheme(
  );
  static SnackBarThemeData snackBarTheme() => SnackBarThemeData(
  );
  static TagThemeExtension tagThemeExtension() => TagThemeExtension();
  
}
