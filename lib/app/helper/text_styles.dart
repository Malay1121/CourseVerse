import 'all_imports.dart';

class Styles {
  static TextStyle regular({Color? color, double? fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: Urbanist,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium({Color? color, double? fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: Urbanist,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle bold({Color? color, double? fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: Urbanist,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle semiBold({Color? color, double? fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontFamily: Urbanist,
      fontWeight: FontWeight.bold,
    );
  }
}

class FontSize {
  static const double xSmall = 10;
  static const double small = 12;
  static const double medium = 14;
  static const double large = 16;
  static const double xLarge = 18;
  static const double h1 = 48;
  static const double h2 = 40;
  static const double h3 = 32;
  static const double h4 = 24;
  static const double h5 = 20;
  static const double h6 = 18;
}
