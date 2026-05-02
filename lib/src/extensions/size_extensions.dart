import '../core/responsive_engine.dart';

extension ResponsiveExt on num {
  double get w => ResponsiveEngine.scaleWidth(this);
  double get h => ResponsiveEngine.scaleHeight(this);
  double get r => ResponsiveEngine.scaleText(this);
}