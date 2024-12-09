import 'package:courseverse/app/helper/all_imports.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  initializeSize(428, 882);
  runApp(
    GetMaterialApp(
      title: "CourseVerse",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
