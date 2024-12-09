import 'package:courseverse/app/helper/all_imports.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.othersWhite,
              // resizeToAvoidBottomInset: false,
              floatingActionButton: FloatingActionButton(
                onPressed: () => Get.toNamed(Routes.CREATE_COURSE),
                backgroundColor: AppColors.primary500,
                child: Icon(
                  Icons.add,
                  color: AppColors.othersWhite,
                  size: 28.t(context),
                ),
              ),
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w(context),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 26.h(context),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 48.w(context),
                            height: 48.h(context),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage(AppImages.logo),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w(context)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: greet() + " 👋",
                                style: Styles.regular(
                                  fontSize: FontSize.large,
                                  color: AppColors.greyscale600,
                                ),
                              ),
                              AppText(
                                text: controller.userDetails["name"].toString(),
                                style: Styles.bold(
                                  fontSize: FontSize.h5,
                                  color: AppColors.greyscale900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      CommonTextField(
                        hintText: AppStrings.search,
                        controller: controller.searchController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 6.5.h(context),
                          ),
                          child: Icon(
                            Icons.search,
                            size: 20.t(context),
                            color: AppColors.greyscale400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance
                              .collection("courses")
                              .where("title",
                                  isGreaterThanOrEqualTo:
                                      controller.searchController.text)
                              .where("visibility", isNotEqualTo: "Private")
                              .snapshots(),
                          builder: (context, snapshot) {
                            List courses = [];
                            if (snapshot.hasData) {
                              courses = snapshot.data!.docs
                                  .map((e) => e.data())
                                  .toList();
                            }
                            return Column(
                              children: [
                                for (Map course in courses)
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 24.h(context),
                                    ),
                                    child: GestureDetector(
                                      onTap: () => Get.toNamed(
                                          Routes.COURSE_DETAILS,
                                          arguments: {
                                            "courseId": course["courseId"]
                                          }),
                                      child: Container(
                                        width: 380.w(context),
                                        height: 160.h(context),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20.w(context),
                                          vertical: 20.h(context),
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(32),
                                          color: AppColors.othersWhite,
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 4),
                                              blurRadius: 60,
                                              color: Color(0xFF04060F)
                                                  .withOpacity(0.05),
                                              spreadRadius: 0,
                                            ),
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 120.w(context),
                                              height: 120.h(context),
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://image.pollinations.ai/prompt/${course["title"].toString().replaceAll(" ", "-")}"),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            SizedBox(width: 16.w(context)),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 24.h(context),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF335EF7)
                                                        .withOpacity(0.08),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 10.w(context),
                                                    ),
                                                    child: AppText(
                                                      text: course["category"]
                                                          .toString(),
                                                      centered: true,
                                                      style: Styles.semiBold(
                                                        color: AppColors
                                                            .primary500,
                                                        fontSize:
                                                            FontSize.xSmall,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12.h(context),
                                                ),
                                                AppText(
                                                  text: course["title"]
                                                      .toString(),
                                                  height: 56.h(context),
                                                  width: 204.w(context),
                                                  minFontSize: FontSize.h6,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Styles.bold(
                                                    fontSize: FontSize.h6,
                                                    color:
                                                        AppColors.greyscale900,
                                                  ),
                                                ),
                                                // SizedBox(
                                                //   height: 12.h(context),
                                                // ),
                                                // AppText(
                                                //   text: "Free",
                                                //   centered: true,
                                                //   height: 22.h(context),
                                                //   style: Styles.bold(
                                                //     color: AppColors.primary500,
                                                //     fontSize: FontSize.h6,
                                                //   ),
                                                // ),
                                                SizedBox(
                                                  height: 12.h(context),
                                                ),
                                                Row(
                                                  children: [
                                                    AppText(
                                                      text:
                                                          "Duration: ${course["length"]} Hours",
                                                      centered: true,
                                                      height: 14.h(context),
                                                      style: Styles.medium(
                                                        color: AppColors
                                                            .greyscale700,
                                                        fontSize:
                                                            FontSize.small,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 16.w(context),
                                                    ),
                                                    AppText(
                                                      text:
                                                          "${course["chapters"]} Chapters",
                                                      centered: true,
                                                      height: 14.h(context),
                                                      style: Styles.medium(
                                                        color: AppColors
                                                            .greyscale700,
                                                        fontSize:
                                                            FontSize.small,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
