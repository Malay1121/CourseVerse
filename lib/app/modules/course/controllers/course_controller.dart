import 'package:get/get.dart';

class CourseController extends GetxController {
  Map courseDetails = {};
  int currentChapter = 0;
  @override
  void onInit() {
    if (Get.arguments != null) {
      courseDetails = Get.arguments["courseDetails"];
      currentChapter = Get.arguments["currentChapter"] ?? currentChapter;
      update();
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

  void nextChapter() {
    if (currentChapter < courseDetails["chapters_details"].length - 1) {
      currentChapter++;
      update();
    }
  }

  void previousChapter() {
    if (currentChapter > 0) {
      currentChapter--;
      update();
    }
  }
}
