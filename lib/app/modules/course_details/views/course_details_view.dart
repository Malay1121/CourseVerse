import 'package:courseverse/app/helper/all_imports.dart';

import '../controllers/course_details_controller.dart';

class CourseDetailsView extends GetView<CourseDetailsController> {
  const CourseDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CourseDetailsController>(
      init: CourseDetailsController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.othersWhite,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 428.w(context),
                  height: 300.h(context),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://image.pollinations.ai/prompt/${controller.courseDetails != null ? controller.courseDetails!["title"].toString().replaceAll(" ", "-") : "Courses"}",
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.h(context),
                      ),
                      AppText(
                        text: (controller.courseDetails?["title"]).toString(),
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
                                text: (controller.courseDetails?["category"])
                                    .toString(),
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
                            text: (controller.courseDetails?["length"])
                                .toString(),
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
                          for (String tab in controller.tabs)
                            GestureDetector(
                              onTap: () => controller.changeTab(tab),
                              child: Column(
                                children: [
                                  AppText(
                                    text: tab,
                                    style: Styles.semiBold(
                                      color: controller.tabs.indexOf(tab) ==
                                              controller.selectedTab
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
                                    height: controller.tabs.indexOf(tab) ==
                                            controller.selectedTab
                                        ? 4
                                        : 2,
                                    decoration: BoxDecoration(
                                      color: controller.tabs.indexOf(tab) ==
                                              controller.selectedTab
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
                      if (controller.selectedTab == 0)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: "About Course",
                              style: Styles.bold(
                                color: AppColors.greyscale900,
                                fontSize: FontSize.h5,
                              ),
                            ),
                            SizedBox(
                              height: 12.h(context),
                            ),
                            AppText(
                              text: (controller.courseDetails?["description"])
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
                            CommonButton(
                              text: "Enroll Course",
                              onTap: () {},
                            ),
                          ],
                        ),
                      if (controller.selectedTab == 1)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text:
                                  "${controller.courseDetails?["chapters"]} Chapters",
                              style: Styles.bold(
                                color: AppColors.greyscale900,
                                fontSize: FontSize.h5,
                              ),
                            ),
                            SizedBox(
                              height: 24.h(context),
                            ),
                            for (Map chapter in controller
                                    .courseDetails?["chapters_details"] ??
                                [])
                              Container(
                                width: 380.w(context),
                                height: 80.h(context),
                                margin: EdgeInsets.only(
                                  bottom: 24.h(context),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColors.othersWhite,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 4),
                                      blurRadius: 60,
                                      color:
                                          Color(0xFF04060F).withOpacity(0.05),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16.w(context),
                                  vertical: 16.h(context),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 44.w(context),
                                      height: 44.h(context),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFF335EF7).withOpacity(0.08),
                                        shape: BoxShape.circle,
                                      ),
                                      child: AppText(
                                        text: chapter["chapter"].toString(),
                                        centered: true,
                                        style: Styles.bold(
                                          color: AppColors.primary500,
                                          fontSize: FontSize.h6,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 16.w(context),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AppText(
                                          text: chapter["title"],
                                          width: 240.w(context),
                                          minFontSize: FontSize.h6,
                                          overflow: TextOverflow.ellipsis,
                                          style: Styles.bold(
                                            color: AppColors.greyscale900,
                                            fontSize: FontSize.h6,
                                          ),
                                        ),
                                        AppText(
                                          text: chapter["time"],
                                          width: 240.w(context),
                                          maxFontSize: FontSize.medium,
                                          overflow: TextOverflow.ellipsis,
                                          style: Styles.medium(
                                            color: AppColors.greyscale700,
                                            fontSize: FontSize.medium,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      size: 28.t(context),
                                      color: AppColors.greyscale500,
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(
                              height: 24.h(context),
                            ),
                          ],
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
