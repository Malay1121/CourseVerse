import 'package:get/get.dart';

import '../../../helper/all_imports.dart';

class CourseDetailsController extends GetxController {
  List tabs = [
    "About",
    "Chapters",
  ];
  int selectedTab = 0;

  Map? courseDetails = {};

  @override
  void onInit() {
    if (Get.arguments != null) {
      if (Get.arguments is Map) {
        if (Get.arguments["courseId"] != null) {
          getCourseDetails(Get.arguments["courseId"]);
        }
      }
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeTab(String tab) {
    selectedTab = tabs.indexOf(tab);
    update();
  }

  void getCourseDetails(String courseId) async {
    EasyLoading.show();
    courseDetails = await DatabaseHelper.getCourse(courseId: courseId);
    update();
    EasyLoading.dismiss();
  }
}
