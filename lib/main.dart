import 'package:artifitia_app/app/routes/app_pages.dart';
import 'package:artifitia_app/app/utils/theme_data.dart';
import 'package:artifitia_app/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Utils.preventLandscapeOrientation();
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: "ArtifitiaApp",
        initialRoute: AppPages.initial,
        debugShowCheckedModeBanner: false,
        getPages: AppPages.routes,
        theme: AppTheme.defaultTheme,
        darkTheme: AppTheme.defaultTheme,
      );
    }),
  );
}

