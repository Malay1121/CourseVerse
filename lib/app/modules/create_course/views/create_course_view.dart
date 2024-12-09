import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../helper/all_imports.dart';
import '../controllers/create_course_controller.dart';

class CreateCourseView extends GetView<CreateCourseController> {
  const CreateCourseView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateCourseController>(
        init: CreateCourseController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.othersWhite,
              body: SingleChildScrollView(
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
                      SizedBox(
                        width: 380.w(context),
                        height: 48.h(context),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () => Get.back(),
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: AppColors.greyscale900,
                                size: 28.t(context),
                              ),
                            ),
                            SizedBox(
                              width: 16.w(context),
                            ),
                            Text(
                              "Create Course",
                              style: Styles.bold(
                                  fontSize: FontSize.h4,
                                  color: AppColors.greyscale900),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      CommonTextField(
                        hintText: AppStrings.courseTitle,
                        controller: controller.titleController,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 6.5.h(context),
                          ),
                          child: Icon(
                            Icons.title,
                            size: 20.t(context),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      CommonTextField(
                        hintText: AppStrings.courseDescription,
                        controller: controller.descriptionController,
                        keyboardType: TextInputType.multiline,
                        textInputAction: TextInputAction.newline,
                        minLines: 5,
                        maxLines: null,
                        height: 150.h(context),
                        prefixIcon: Icon(
                          Icons.description,
                          size: 20.t(context),
                        ),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      CommonTextField(
                        hintText:
                            AppStrings.noOfChapters + " (3 - 10 recommended)",
                        controller: controller.noOfChaptersController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.play_lesson,
                          size: 20.t(context),
                        ),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      CommonTextField(
                        hintText: AppStrings.courseLength + " (In hours)",
                        controller: controller.courseLengthController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textInputAction: TextInputAction.done,
                        prefixIcon: Icon(
                          Icons.access_time_filled_rounded,
                          size: 20.t(context),
                        ),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      AppText(
                        text: "Difficulty",
                        style: Styles.bold(
                          fontSize: FontSize.h5,
                          color: AppColors.greyscale800,
                        ),
                      ),
                      SizedBox(
                        height: 12.h(context),
                      ),
                      Row(
                        children: [
                          for (String tab in controller.difficulty)
                            GestureDetector(
                              onTap: () => controller.changeTab(tab),
                              child: Column(
                                children: [
                                  AppText(
                                    text: tab,
                                    style: Styles.semiBold(
                                      color:
                                          controller.difficulty.indexOf(tab) ==
                                                  controller.selectedDifficulty
                                              ? AppColors.primary500
                                              : AppColors.greyscale500,
                                      fontSize: FontSize.xLarge,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h(context),
                                  ),
                                  Container(
                                    width: 126.5.w(context),
                                    height:
                                        controller.difficulty.indexOf(tab) ==
                                                controller.selectedDifficulty
                                            ? 4
                                            : 2,
                                    decoration: BoxDecoration(
                                      color:
                                          controller.difficulty.indexOf(tab) ==
                                                  controller.selectedDifficulty
                                              ? AppColors.primary500
                                              : AppColors.greyscale200,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      AppText(
                        text: "Visibility",
                        style: Styles.bold(
                          fontSize: FontSize.h5,
                          color: AppColors.greyscale800,
                        ),
                      ),
                      SizedBox(
                        height: 12.h(context),
                      ),
                      Row(
                        children: [
                          for (String tab in controller.visibility)
                            GestureDetector(
                              onTap: () => controller.changeVisibility(tab),
                              child: Column(
                                children: [
                                  AppText(
                                    text: tab,
                                    style: Styles.semiBold(
                                      color:
                                          controller.visibility.indexOf(tab) ==
                                                  controller.selectedVisibility
                                              ? AppColors.primary500
                                              : AppColors.greyscale500,
                                      fontSize: FontSize.xLarge,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12.h(context),
                                  ),
                                  Container(
                                    width: 190.w(context),
                                    height:
                                        controller.visibility.indexOf(tab) ==
                                                controller.selectedVisibility
                                            ? 4
                                            : 2,
                                    decoration: BoxDecoration(
                                      color:
                                          controller.visibility.indexOf(tab) ==
                                                  controller.selectedVisibility
                                              ? AppColors.primary500
                                              : AppColors.greyscale200,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 48.h(context),
                      ),
                      AppText(
                        text: "Takes ~ 20 seconds to create course",
                        centered: true,
                        style: Styles.medium(
                          fontSize: FontSize.medium,
                          color: AppColors.greyscale800,
                        ),
                      ),
                      SizedBox(
                        height: 5.h(context),
                      ),
                      CommonButton(
                        text: AppStrings.createCourse,
                        onTap: () => controller.createCourse(),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
