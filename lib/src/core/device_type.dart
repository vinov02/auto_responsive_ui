enum DeviceType { smallPhone, phone, largePhone, tablet }

class DeviceHelper {
  static DeviceType getDeviceType(double width) {
    if (width < 360) return DeviceType.smallPhone;
    if (width < 600) return DeviceType.phone;
    if (width < 900) return DeviceType.largePhone;
    return DeviceType.tablet;
  }
}
