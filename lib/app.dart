import 'package:e_book/pages/home/home_page.dart';
import 'package:e_book/pages/root/root_page.dart';
import 'package:e_book/themes/dark_theme.dart';
import 'package:e_book/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Size get designSize {
  final firstView = WidgetsBinding.instance.platformDispatcher.views.first;
  //逻辑短边
  final logicalShortestSize =
      firstView.physicalSize.shortestSide / firstView.devicePixelRatio;
  //逻辑长边
  final logicalLongestSize =
      firstView.physicalSize.longestSide / firstView.devicePixelRatio;
  //缩放比例
  const saleFactor = 0.95;
  return Size(
      logicalLongestSize * saleFactor, logicalShortestSize * saleFactor);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: designSize,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: Provider.of<ThemeProvider>(context, listen: true).themeDate,
          darkTheme: darkMode,
          home: const RootPage(),
        ));
  }
}
