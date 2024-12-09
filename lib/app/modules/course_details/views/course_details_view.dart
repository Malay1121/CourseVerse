import 'package:courseverse/app/helper/all_imports.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/course_details_controller.dart';

class CourseDetailsView extends GetView<CourseDetailsController> {
  const CourseDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CourseDetailsController>(
      init: CourseDetailsController(),
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 428.w(context),
                  height: 300.h(context),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://image.pollinations.ai/prompt/Introduction-to-Optimization-and-Finding-Critical-Points",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  padding: EdgeInsets.only(
                    top: 60.h(context),
                    left: 24.w(context),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Container(
                              width: 50.w(context),
                              height: 50.h(context),
                              decoration: BoxDecoration(
                                color: AppColors.primary500,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_back_rounded,
                                color: AppColors.othersWhite,
                                size: 28.t(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w(context),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24.h(context),
                      ),
                      AppText(
                        text:
                            "Introduction to Optimization and Finding Critical Points",
                        maxFontSize: FontSize.h3,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.bold(
                          fontSize: FontSize.h3,
                          color: AppColors.greyscale900,
                        ),
                      ),
                      SizedBox(
                        height: 20.h(context),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 24.h(context),
                            decoration: BoxDecoration(
                              color: Color(0xFF335EF7).withOpacity(0.08),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w(context),
                              ),
                              child: AppText(
                                text: "Mathematics",
                                centered: true,
                                style: Styles.semiBold(
                                  color: AppColors.primary500,
                                  fontSize: FontSize.xSmall,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16.w(context),
                          ),
                          Icon(
                            Icons.access_time_filled,
                            size: 20.t(context),
                            color: AppColors.primary500,
                          ),
                          SizedBox(
                            width: 6.w(context),
                          ),
                          AppText(
                            text: "6 hours",
                            height: 22.h(context),
                            style: Styles.medium(
                              color: AppColors.greyscale800,
                              fontSize: FontSize.large,
                            ),
                          ),
                          SizedBox(
                            width: 16.w(context),
                          ),
                          Icon(
                            Icons.people,
                            size: 20.t(context),
                            color: AppColors.primary500,
                          ),
                          SizedBox(
                            width: 6.w(context),
                          ),
                          AppText(
                            text: "1 Students",
                            height: 22.h(context),
                            style: Styles.medium(
                              color: AppColors.greyscale800,
                              fontSize: FontSize.large,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      Container(
                        width: 380.w(context),
                        height: 1,
                        color: AppColors.greyscale200,
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              AppText(
                                text: "About",
                                style: Styles.semiBold(
                                  color: AppColors.primary500,
                                  fontSize: FontSize.xLarge,
                                ),
                              ),
                              SizedBox(
                                height: 12.h(context),
                              ),
                              Container(
                                width: 190.w(context),
                                height: 4,
                                decoration: BoxDecoration(
                                  color: AppColors.primary500,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              AppText(
                                text: "Chapters",
                                style: Styles.semiBold(
                                  color: AppColors.greyscale500,
                                  fontSize: FontSize.xLarge,
                                ),
                              ),
                              SizedBox(
                                height: 12.h(context),
                              ),
                              Container(
                                width: 190.w(context),
                                height: 2,
                                decoration: BoxDecoration(
                                  color: AppColors.greyscale200,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
