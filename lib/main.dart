import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes/app_pages.dart';
import 'routes/app_routes.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  //     SystemUiOverlay.bottom,
  //   ]);
  // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => GetMaterialApp(
              initialRoute: AppRoutes.DASHBOARD,
              getPages: AppPages.list,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
              darkTheme: ThemeData.dark(),
              themeMode: ThemeMode.system,
            ));
  }
}
