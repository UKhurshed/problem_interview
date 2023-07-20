import 'package:flutter/material.dart';

extension ContextSize on BuildContext {
  double get appWidth {
    return MediaQuery.of(this).size.width;
  }

  double get appHeight {
    return MediaQuery.of(this).size.height;
  }
}

extension PaprikaBaseSize on num {
  double get h {
    return (this * BaseDesignSize.scaleHeight) / 100;
  }

  double get w {
    return (this * BaseDesignSize.scaleWidth) / 100;
  }
}

class BaseDesignSize {
  static const double width = 393;

  static const double height = 786;

  static const double scaleHeight = 100 / height;

  static const double scaleWidth = 100 / width;
}