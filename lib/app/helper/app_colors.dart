library figma_theme;

import 'dart:ui';
import 'package:courseverse/app/helper/all_imports.dart';
import 'package:flutter/material.dart';

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
