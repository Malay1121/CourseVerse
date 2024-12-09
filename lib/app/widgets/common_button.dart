import 'package:courseverse/app/helper/all_imports.dart';

class CommonButton extends StatefulWidget {
  CommonButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.height,
      this.width,
      this.backgroundColor,
      this.textColor,
      this.border});
  String text;
  VoidCallback onTap;
  double? height;
  double? width;
  Color? backgroundColor;
  Color? textColor;
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
        height: widget.height ?? 58.h(context),
        width: widget.width ?? 380.w(context),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.primary500,
          borderRadius: BorderRadius.circular(100),
          border: widget.border,
        ),
        child: Center(
          child: AppText(
            text: widget.text,
            height: 22.h(context),
            centered: true,
            style: Styles.bold(
              color: widget.textColor ?? AppColors.othersWhite,
              fontSize: FontSize.large,
            ),
          ),
        ),
      ),
    );
  }
}
