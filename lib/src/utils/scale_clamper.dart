import 'dart:math';
import 'package:auto_responsive_ui/src/core/responsive_config.dart';

class ScaleClamper {
  static double clamp(double sclae, ResponsiveConfig config){
    return min(max(sclae, config.minScale), config.maxScale);
  }
}