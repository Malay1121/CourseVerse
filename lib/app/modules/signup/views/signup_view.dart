import 'package:courseverse/app/helper/all_imports.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
        init: SignupController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: AppColors.othersWhite,
              // resizeToAvoidBottomInset: false,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w(context),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 131.75.h(context),
                      ),
                      AppText(
                        text: controller.signup
                            ? AppStrings.createYourAccount
                            : AppStrings.loginToYourAccount,
                        style: Styles.bold(
                          color: AppColors.greyscale900,
                          fontSize: FontSize.h1,
                        ),
                        maxLines: 2,
                        width: 380.w(context),
                        height: 116.h(context),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 60.h(context),
                      ),
                      if (controller.signup)
                        CommonTextField(
                          hintText: AppStrings.yourName,
                          controller: controller.nameController,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 6.5.h(context),
                            ),
                            child: Icon(
                              Icons.person,
                              size: 20.t(context),
                            ),
                          ),
                        ),
                      if (controller.signup)
                        SizedBox(
                          height: 20.h(context),
                        ),
                      CommonTextField(
                        hintText: AppStrings.yourEmail,
                        controller: controller.emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 6.5.h(context),
                          ),
                          child: Icon(
                            Icons.email,
                            size: 20.t(context),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h(context),
                      ),
                      CommonTextField(
                        hintText: AppStrings.password,
                        controller: controller.passwordController,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 6.5.h(context),
                          ),
                          child: Icon(
                            Icons.lock,
                            size: 20.t(context),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64.h(context),
                      ),
                      CommonButton(
                        text: controller.signup
                            ? AppStrings.signUp
                            : AppStrings.signIn,
                        onTap: () => controller.submit(),
                      ),
                      SizedBox(
                        height: 70.h(context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 56.9.w(context),
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.greyscale200,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.w(context),
                            ),
                            child: AppText(
                              text: "or",
                              width: 16.w(context),
                              style: Styles.semiBold(
                                  fontSize: FontSize.xLarge,
                                  color: AppColors.greyscale700),
                            ),
                          ),
                          Container(
                            width: 56.9.w(context),
                            height: 1,
                            decoration: BoxDecoration(
                              color: AppColors.greyscale200,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h(context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            text:
                                "${controller.signup ? AppStrings.doYouHaveAnAccount : AppStrings.dontHaveAnAccountYet} ",
                            style: Styles.regular(
                                fontSize: FontSize.medium,
                                color: AppColors.greyscale500),
                          ),
                          GestureDetector(
                            onTap: () => controller.switchScreen(),
                            child: AppText(
                              text: controller.signup
                                  ? AppStrings.signIn
                                  : AppStrings.signUp,
                              style: Styles.semiBold(
                                fontSize: FontSize.medium,
                                color: AppColors.primary500,
                              ),
                            ),
                          ),
                        ],
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
