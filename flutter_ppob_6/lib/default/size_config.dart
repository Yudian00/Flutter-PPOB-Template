import 'package:flutter/material.dart';

/// digunakan untuk mendapatkan ukuran yang responsive
///
/// misalkan height = 100
///
/// maka SizeConfig.safeBlockVertical * 100 / 7.2
///
/// 100 --> ukuran yang diinginkan
///
/// 7.2 --> ukuran maksimal height device / 100
class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal;
  static late double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }

  static double getBlockSizeVertical(double value) {
    double result = value / blockSizeVertical;

    return result;
  }

  static double getBlockSizeHorizontal(double value) {
    double result = value / blockSizeHorizontal;

    return result;
  }

  static double getSafeBlockVertical(double value) {
    double result = value / safeBlockVertical;

    return result;
  }

  static double getSafeBlockHorizontal(double value) {
    double result = value / safeBlockHorizontal;

    return result;
  }
}
