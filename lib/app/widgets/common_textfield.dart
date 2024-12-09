import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../helper/all_imports.dart';

class CommonTextField extends StatefulWidget {
  CommonTextField({
    super.key,
    required this.hintText,
    this.height = 28,
    this.width = 196,
    this.prefixIcon,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.textInputAction,
    this.maxLines = 1,
    this.prefixIconConstraints,
    this.onChanged,
  });
  String hintText;
  double? width;
  double? height;
  Widget? prefixIcon;
  TextEditingController? controller;
  bool obscureText;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  int? maxLines;
  BoxConstraints? prefixIconConstraints;
  Function(String)? onChanged;
  bool listening = false;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  SpeechToText speech = SpeechToText();
  void speak() async {
    bool available = await speech.initialize(
      onStatus: (status) {
        print(status);
        if (status == "done" || status == "notListening") {
          widget.listening = false;

          setState(() {});
        } else if (status == "listening") {
          widget.listening = true;
          setState(() {});
        }
      },
      onError: (errorNotification) {},
    );
    setState(() {});
    if (available) {
      speech.listen(
        listenOptions: SpeechListenOptions(listenMode: ListenMode.dictation),
        partialResults: false,
        onResult: (result) {
          if (widget.controller != null)
            widget.controller!.text += result.recognizedWords;
        },
      );
    } else {
      print("The user has denied the use of speech recognition.");
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width?.w(context),
      height: widget.height?.h(context),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLines,
        onChanged: widget.onChanged,
        style: Styles.bodyMediumSemibold,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.zero,
          fillColor: AppColors.othersWhite,
          filled: true,
          hintText: widget.hintText,
          suffixIcon: GestureDetector(
            onTap: () => speak(),
            child: Icon(
              widget.listening ? Icons.stop : Icons.mic,
              color: AppColors.primary500,
              size: 12.t(context),
            ),
          ),
          hintStyle: Styles.bodyMediumRegular,
          prefixIconConstraints: widget.prefixIconConstraints,
          prefixIcon: widget.prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}