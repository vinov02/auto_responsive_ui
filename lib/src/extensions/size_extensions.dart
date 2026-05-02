import '../core/responsive_engine.dart';

/// Extension methods for responsive scaling values.
extension ResponsiveExt on num {

  /// Scales value based on screen width
  double get w => ResponsiveEngine.scaleWidth(this);

  /// Scales value based on screen height
  double get h => ResponsiveEngine.scaleHeight(this);

  /// Scales value for text/font size
  double get r => ResponsiveEngine.scaleText(this);
}