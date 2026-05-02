/// Represents different device categories for responsive UI.
enum DeviceType { 
  /// Devices with width less than 360px
  smallPhone, 
  /// Devices with width between 360px and 599px
  phone, 
  /// Devices with width between 600px and 899px
  largePhone, 
  /// Devices with width 900px or more
  tablet 
}

/// Helps identify device category based on screen width.
class DeviceHelper {

  /// Returns the [DeviceType] based on given screen width.
  static DeviceType getDeviceType(double width) {
    if (width < 360) return DeviceType.smallPhone;
    if (width < 600) return DeviceType.phone;
    if (width < 900) return DeviceType.largePhone;
    return DeviceType.tablet;
  }
}
