import 'package:courseverse/app/helper/all_imports.dart';

import '../controllers/course_controller.dart';

class CourseView extends GetView<CourseController> {
  const CourseView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CourseController>(
        init: CourseController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.othersWhite,
              body: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.w(context),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24.h(context),
                            ),
                            AppText(
                              text: (controller.courseDetails[
                                                  "chapters_details"]
                                              ?[controller.currentChapter]
                                          ["chapter"])
                                      .toString() +
                                  ". " +
                                  (controller.courseDetails["chapters_details"]
                                          ?[controller.currentChapter]["title"])
                                      .toString(),
                              maxLines: null,
                              minFontSize: FontSize.h4,
                              style: Styles.bold(
                                color: AppColors.greyscale900,
                                fontSize: FontSize.h4,
                              ),
                            ),
                            SizedBox(
                              height: 12.h(context),
                            ),
                            AppText(
                              text: (controller
                                          .courseDetails["chapters_details"]
                                      ?[controller.currentChapter]["content"])
                                  .toString(),
                              maxLines: null,
                              style: Styles.regular(
                                color: AppColors.greyscale800,
                                fontSize: FontSize.medium,
                              ),
                            ),
                            SizedBox(
                              height: 24.h(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w(context),
                      vertical: 24.h(context),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonButton(
                          text: controller.currentChapter <= 0
                              ? "Cancel"
                              : "Previous",
                          onTap: () => controller.currentChapter <= 0
                              ? Get.back()
                              : controller.previousChapter(),
                          width: 180.w(context),
                          backgroundColor: AppColors.primary100,
                          textColor: AppColors.primary500,
                        ),
                        CommonButton(
                          text: controller.currentChapter >=
                                  controller.courseDetails["chapters_details"]
                                          .length -
                                      1
                              ? "Finish"
                              : "Next",
                          onTap: () => controller.currentChapter >=
                                  controller.courseDetails["chapters_details"]
                                          .length -
                                      1
                              ? Get.back()
                              : controller.nextChapter(),
                          width: 180.w(context),
                          backgroundColor: AppColors.primary500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
