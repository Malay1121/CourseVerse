import 'dart:ui';

import 'package:courseverse/app/helper/all_imports.dart';
import 'package:courseverse/app/helper/app_colors.dart';

class CommonButton extends StatefulWidget {
  CommonButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.height,
      this.width,
      this.backgroundColor,
      this.textStyle,
      this.border});
  String text;
  VoidCallback onTap;
  double? height;
  double? width;
  Color? backgroundColor;
  TextStyle? textStyle;
  Border? border;
  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: widget.height ?? 28.h(context),
        width: widget.width ?? 196.w(context),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.primary500,
          borderRadius: BorderRadius.circular(8),
          border: widget.border,
        ),
        child: Center(
          child: AppText(
            text: widget.text,
            height: 12.44.h(context),
            centered: true,
            style: widget.textStyle ?? Styles.bodyLargeBold,
          ),
        ),
      ),
    );
  }
}
