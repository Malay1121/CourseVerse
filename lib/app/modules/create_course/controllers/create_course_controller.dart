import '../../../helper/all_imports.dart';

class CreateCourseController extends CommonController {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController noOfChaptersController = TextEditingController();
  TextEditingController courseLengthController = TextEditingController();

  List difficulty = ["Beginner", "Intermediate", "Advanced"];
  int? selectedDifficulty;

  List visibility = ["Public", "Private"];
  int? selectedVisibility;

  @override
  void onInit() {
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
    selectedDifficulty = difficulty.indexOf(tab);
    update();
  }

  void changeVisibility(String tab) {
    selectedVisibility = visibility.indexOf(tab);
    update();
  }

  void createCourse() async {
    EasyLoading.show();
    if (titleController.text.isEmpty) {
      showSnackbar(title: "Title is required");
      return;
    }
    if (descriptionController.text.isEmpty) {
      showSnackbar(title: "Description is required");
      return;
    }
    if (noOfChaptersController.text.isEmpty) {
      showSnackbar(title: "No of chapters is required");
      return;
    }
    if (courseLengthController.text.isEmpty) {
      showSnackbar(title: "Course length is required");
      return;
    }
    if (selectedDifficulty == null) {
      showSnackbar(title: "Difficulty is required");
      return;
    }
    Map courseDetails = {
      "title": titleController.text,
      "description": descriptionController.text,
      "chapters": int.tryParse(noOfChaptersController.text) ?? 0,
      "length": int.tryParse(courseLengthController.text) ?? 0,
      "level": difficulty[selectedDifficulty!]
    };
    Map<String, dynamic> getCourse = await createCourseApi(courseDetails);
    courseDetails =
        await DatabaseHelper.createCourse(user: user!, data: getCourse);
    EasyLoading.dismiss();
    Get.offAndToNamed(Routes.COURSE_DETAILS,
        arguments: {"courseId": courseDetails["courseId"]});
    showSnackbar(
      title: "Course created successfully",
    );
  }
}
