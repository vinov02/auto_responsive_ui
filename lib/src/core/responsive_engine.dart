import 'package:flutter/widgets.dart';
import '../utils/scale_clamper.dart';
import 'responsive_config.dart';
import 'device_type.dart';

class ResponsiveEngine {
  static late ResponsiveConfig _config;
  static late Size screenSize;
  static late DeviceType deviceTypes;

  static void init(BuildContext context, ResponsiveConfig config) {
    screenSize = MediaQuery.of(context).size;
    _config = config;
    deviceTypes = DeviceHelper.getDeviceType(screenSize.width);
  }

  static double scaleWidth(num value) {
    double scale = screenSize.width / _config.designWidth;
    return value * ScaleClamper.clamp(scale, _config);
  }

  static double scaleHeight(num value) {
    double scale = screenSize.height / _config.designHeight;
    return value * ScaleClamper.clamp(scale, _config);
  }

  static double scaleText(num value) {
    double scaleW = screenSize.width / _config.designWidth;
    double scaleH = screenSize.height / _config.designHeight;
    double scale = (scaleW + scaleH) / 2;

    return value * ScaleClamper.clamp(scale, _config);
  }

  static DeviceType get deviceType => deviceTypes;
}