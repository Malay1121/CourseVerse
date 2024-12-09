library figma_theme;

import 'dart:ui';
import 'package:flutter/material.dart';

class FigmaTheme extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const FigmaTheme({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
  });

  @override
  State<FigmaTheme> createState() => _FigmaThemeState();
}

class _FigmaThemeState extends State<FigmaTheme> with TickerProviderStateMixin {
  void _rebuildAllChildren(BuildContext context) {
    void rebuild(Element el) {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([]),
      builder: (context, _) {
        _rebuildAllChildren(context);
        return widget.child;
      },
    );
  }
}

class AppColors {
  AppColors._();

  static final primary500 = const IColor._fromARGB(255, 51, 94, 247);
  static final primary400 = const IColor._fromARGB(255, 92, 126, 249);
  static final primary300 = const IColor._fromARGB(255, 133, 158, 250);
  static final primary200 = const IColor._fromARGB(255, 173, 191, 252);
  static final primary100 = const IColor._fromARGB(255, 235, 239, 254);
  static final secondary500 = const IColor._fromARGB(255, 255, 211, 0);
  static final secondary400 = const IColor._fromARGB(255, 255, 220, 51);
  static final secondary300 = const IColor._fromARGB(255, 255, 229, 102);
  static final secondary200 = const IColor._fromARGB(255, 255, 237, 153);
  static final secondary100 = const IColor._fromARGB(255, 255, 251, 230);
  static final alertsStatusSuccess = const IColor._fromARGB(255, 74, 222, 128);
  static final alertsStatusInfo = const IColor._fromARGB(255, 36, 107, 253);
  static final alertsStatusWarning = const IColor._fromARGB(255, 250, 204, 21);
  static final alertsStatusError = const IColor._fromARGB(255, 247, 85, 85);
  static final alertsStatusDisabled =
      const IColor._fromARGB(255, 216, 216, 216);
  static final alertsStatusButtonDisabled =
      const IColor._fromARGB(255, 67, 96, 201);
  static final greyscale900 = const IColor._fromARGB(255, 33, 33, 33);
  static final greyscale800 = const IColor._fromARGB(255, 66, 66, 66);
  static final greyscale700 = const IColor._fromARGB(255, 97, 97, 97);
  static final greyscale600 = const IColor._fromARGB(255, 117, 117, 117);
  static final greyscale500 = const IColor._fromARGB(255, 158, 158, 158);
  static final greyscale400 = const IColor._fromARGB(255, 189, 189, 189);
  static final greyscale300 = const IColor._fromARGB(255, 224, 224, 224);
  static final greyscale200 = const IColor._fromARGB(255, 238, 238, 238);
  static final greyscale100 = const IColor._fromARGB(255, 245, 245, 245);
  static final greyscale50 = const IColor._fromARGB(255, 250, 250, 250);
  static final gradientsGradientBlue = LinearGradient(
    transform: GradientRotation(4.994608720432173),
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [
      const IColor._fromARGB(255, 51, 94, 247),
      const IColor._fromARGB(255, 95, 130, 255)
    ],
  );
  static final gradientsGradientYellow = LinearGradient(
    transform: GradientRotation(4.994608720432173),
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [
      const IColor._fromARGB(255, 250, 204, 21),
      const IColor._fromARGB(255, 255, 229, 128)
    ],
  );
  static final gradientsGradientGreen = LinearGradient(
    transform: GradientRotation(4.994608720432173),
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [
      const IColor._fromARGB(255, 34, 187, 156),
      const IColor._fromARGB(255, 53, 222, 188)
    ],
  );
  static final gradientsGradidentOrange = LinearGradient(
    transform: GradientRotation(4.994608720432173),
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [
      const IColor._fromARGB(255, 251, 148, 0),
      const IColor._fromARGB(255, 255, 171, 56)
    ],
  );
  static final gradientsGradientRed = LinearGradient(
    transform: GradientRotation(4.994608720432173),
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
    colors: [
      const IColor._fromARGB(255, 255, 77, 103),
      const IColor._fromARGB(255, 255, 138, 155)
    ],
  );
  static final othersWhite = const IColor._fromARGB(255, 255, 255, 255);
  static final othersBlack = const IColor._fromARGB(255, 0, 0, 0);
  static final othersRed = const IColor._fromARGB(255, 245, 67, 54);
  static final othersPink = const IColor._fromARGB(255, 234, 30, 97);
  static final othersPurple = const IColor._fromARGB(255, 157, 40, 172);
  static final othersDeepPurple = const IColor._fromARGB(255, 103, 58, 179);
  static final othersIndigo = const IColor._fromARGB(255, 63, 81, 178);
  static final othersBlue = const IColor._fromARGB(255, 26, 150, 240);
  static final othersLightBlue = const IColor._fromARGB(255, 0, 169, 241);
  static final othersCyan = const IColor._fromARGB(255, 0, 188, 211);
  static final othersTeal = const IColor._fromARGB(255, 0, 150, 137);
  static final othersGreen = const IColor._fromARGB(255, 74, 175, 87);
  static final othersLightGreen = const IColor._fromARGB(255, 139, 194, 85);
  static final othersLime = const IColor._fromARGB(255, 205, 220, 76);
  static final othersYellow = const IColor._fromARGB(255, 255, 235, 79);
  static final othersAmber = const IColor._fromARGB(255, 255, 192, 45);
  static final othersOrange = const IColor._fromARGB(255, 255, 152, 31);
  static final othersDeepOrange = const IColor._fromARGB(255, 255, 87, 38);
  static final othersBrown = const IColor._fromARGB(255, 122, 85, 72);
  static final othersBlueGrey = const IColor._fromARGB(255, 96, 125, 138);
  static final darkDark1 = const IColor._fromARGB(255, 24, 26, 32);
  static final darkDark2 = const IColor._fromARGB(255, 31, 34, 42);
  static final darkDark3 = const IColor._fromARGB(255, 53, 56, 63);
  static final backgroundBlue = const IColor._fromARGB(255, 246, 250, 253);
  static final backgroundGreen = const IColor._fromARGB(255, 242, 255, 252);
  static final backgroundOrange = const IColor._fromARGB(255, 255, 248, 237);
  static final backgroundPink = const IColor._fromARGB(255, 255, 245, 245);
  static final backgroundYellow = const IColor._fromARGB(255, 255, 254, 224);
  static final backgroundPurple = const IColor._fromARGB(255, 252, 244, 255);
  static final transparentBlue = const IColor._fromARGB(20, 51, 94, 247);
  static final transparentOrange = const IColor._fromARGB(20, 255, 152, 0);
  static final transparentYellow = const IColor._fromARGB(20, 250, 204, 21);
  static final transparentRed = const IColor._fromARGB(20, 247, 85, 85);
  static final transparentGreen = const IColor._fromARGB(20, 76, 175, 80);
  static final transparentPurple = const IColor._fromARGB(20, 156, 39, 176);
  static final transparentCyan = const IColor._fromARGB(20, 0, 188, 212);
}

class Style extends TextStyle {
  const Style._({
    super.inherit = true,
    super.color,
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.fontVariations,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.fontFamilyFallback,
    super.overflow,
    super.fontFamily,
  });

  Style tint(IColor? color) => Style._style(copyWith(color: color));

  static FontWeight _parseVariableWeight(double parse) {
    if (parse <= 100) {
      return FontWeight.w100;
    } else if (parse <= 200) {
      return FontWeight.w200;
    } else if (parse <= 300) {
      return FontWeight.w300;
    } else if (parse <= 400) {
      return FontWeight.w400;
    } else if (parse <= 500) {
      return FontWeight.w500;
    } else if (parse <= 600) {
      return FontWeight.w600;
    } else if (parse <= 700) {
      return FontWeight.w700;
    } else if (parse <= 800) {
      return FontWeight.w800;
    } else {
      return FontWeight.w900;
    }
  }

  static FontStyle _parseStringStyle(String parse) {
    return parse.contains("italic") ? FontStyle.italic : FontStyle.normal;
  }

  factory Style._style(TextStyle textStyle) {
    return Style._(
      inherit: textStyle.inherit,
      color: textStyle.color,
      backgroundColor: textStyle.backgroundColor,
      fontSize: textStyle.fontSize,
      fontWeight: textStyle.fontWeight,
      fontStyle: textStyle.fontStyle,
      letterSpacing: textStyle.letterSpacing,
      wordSpacing: textStyle.wordSpacing,
      textBaseline: textStyle.textBaseline,
      height: textStyle.height,
      leadingDistribution: textStyle.leadingDistribution,
      locale: textStyle.locale,
      foreground: textStyle.foreground,
      background: textStyle.background,
      shadows: textStyle.shadows,
      fontFeatures: textStyle.fontFeatures,
      fontVariations: textStyle.fontVariations,
      decoration: textStyle.decoration,
      decorationColor: textStyle.decorationColor,
      decorationStyle: textStyle.decorationStyle,
      decorationThickness: textStyle.decorationThickness,
      debugLabel: textStyle.debugLabel,
      fontFamily: textStyle.fontFamily,
      fontFamilyFallback: textStyle.fontFamilyFallback,
      overflow: textStyle.overflow,
    );
  }
}

class Styles {
  const Styles._();

  static const _parent = TextStyle(
    debugLabel: '',
    leadingDistribution: TextLeadingDistribution.even,
  );

  static final h1Bold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 48,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.2000000476837158,
      letterSpacing: 0,
    ),
  );

  static final h2Bold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 40,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.2000000476837158,
      letterSpacing: 0,
    ),
  );

  static final h3Bold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 32,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.2000000476837158,
      letterSpacing: 0,
    ),
  );

  static final h4Bold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 24,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.2000000476837158,
      letterSpacing: 0,
    ),
  );

  static final h5Bold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 20,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.2000000476837158,
      letterSpacing: 0,
    ),
  );

  static final h6Bold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 18,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.2000000476837158,
      letterSpacing: 0,
    ),
  );

  static final bodyXlargeRegular = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 18,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXlargeSemibold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 18,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXlargeBold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 18,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXlargeMedium = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 18,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyLargeRegular = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 16,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyLargeSemibold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 16,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyLargeBold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 16,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyLargeMedium = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 16,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyMediumRegular = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 14,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyMediumSemibold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 14,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyMediumBold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 14,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyMediumMedium = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 14,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1.399999976158142,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodySmallRegular = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 12,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodySmallSemibold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 12,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodySmallBold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 12,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodySmallMedium = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 12,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXsmallRegular = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 10,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXsmallSemibold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 10,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXsmallBold = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 10,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );

  static final bodyXsmallMedium = Style._style(
    _parent.copyWith(
      fontFamily: "Urbanist",
      fontSize: 10,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      height: 1,
      letterSpacing: 0.20000000298023224,
    ),
  );
}

class AppShadow extends BoxShadow {
  const AppShadow._({
    super.color,
    super.offset,
    super.blurRadius,
    super.spreadRadius = 0.0,
    super.blurStyle,
  });
}

class Shadows {
  const Shadows._();

  static final List<AppShadow> cardShadow1 = [
    AppShadow._(
      color: Color.fromRGBO(4, 15, 6, 0.07999999821186066),
      offset: Offset(0, 4),
      blurRadius: 60,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<AppShadow> cardShadow2 = [
    AppShadow._(
      color: Color.fromRGBO(4, 15, 6, 0.05000000074505806),
      offset: Offset(0, 4),
      blurRadius: 60,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<AppShadow> cardShadow3 = [
    AppShadow._(
      color: Color.fromRGBO(4, 15, 6, 0.07999999821186066),
      offset: Offset(0, 20),
      blurRadius: 100,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<AppShadow> buttonShadow1 = [
    AppShadow._(
      color: Color.fromRGBO(51, 247, 94, 0.25),
      offset: Offset(4, 8),
      blurRadius: 24,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<AppShadow> buttonShadow2 = [
    AppShadow._(
      color: Color.fromRGBO(51, 247, 94, 0.20000000298023224),
      offset: Offset(4, 12),
      blurRadius: 32,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];

  static final List<AppShadow> buttonShadow3 = [
    AppShadow._(
      color: Color.fromRGBO(51, 247, 94, 0.20000000298023224),
      offset: Offset(4, 16),
      blurRadius: 32,
      spreadRadius: 0,
      blurStyle: BlurStyle.normal,
    ),
  ];
}

class IColor extends Color {
  const IColor._(int value) : super(value);
  const IColor._fromARGB(int a, int r, int g, int b)
      : super.fromARGB(a, r, g, b);
}

extension _LerpDouble on double {
  double _lerp(double b, double t) {
    return lerpDouble(this, b, t) ?? this;
  }
}

extension _LerpColor on Color {
  Color _lerp(Color b, double t) {
    return Color.lerp(this, b, t) ?? this;
  }
}

extension _LerpString on String {
  String _lerp(String b, double t) {
    return t < 0.5 ? b : this;
  }
}

extension _LerpBoolean on bool {
  bool _lerp(bool b, double t) {
    return t < 0.5 ? b : this;
  }
}
