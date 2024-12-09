import 'package:courseverse/app/helper/all_imports.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBLKZPeqOGxrQyZCWnDrphJfsUgWAZKLTc",
          appId: "1:402746916869:android:b634c9d17f571c058b5c6c",
          messagingSenderId: "402746916869",
          projectId: "courseverse-app"));
  initializeSize(428, 882);
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.othersWhite,
      ),
      alignment: Alignment.center,
      child: AppText(
        text: 'Error!\n${details.exception}',
        style: TextStyle(color: AppColors.greyscale900),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  };
  runApp(
    GetMaterialApp(
      title: "Courseverse",
      initialRoute: AppPages.INITIAL,
      builder: EasyLoading.init(),
      getPages: AppPages.routes,
    ),
  );
}
