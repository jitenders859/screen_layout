part of screen_layout;

class DeviceUtils {
  final ScreenType screenType;
  final Size screenSize;
  final Orientation orientation;

  DeviceUtils(
      {required this.screenType,
      required this.screenSize,
      required this.orientation});
}

DeviceType getDeviceType() {
  DeviceType _deviceType;

  // Gets DeviceType
  if (kIsWeb) {
    _deviceType = DeviceType.web;
  } else {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        _deviceType = DeviceType.android;
        break;
      case TargetPlatform.iOS:
        _deviceType = DeviceType.ios;
        break;
      case TargetPlatform.windows:
        _deviceType = DeviceType.windows;
        break;
      case TargetPlatform.macOS:
        _deviceType = DeviceType.mac;
        break;
      case TargetPlatform.linux:
        _deviceType = DeviceType.linux;
        break;
      case TargetPlatform.fuchsia:
        _deviceType = DeviceType.fuschia;
        break;
    }
  }

  return _deviceType;
}

ScreenType getScreenType(BoxConstraints constraints) {
  late double deviceWidth;

  if (constraints.maxWidth < constraints.maxHeight) {
    deviceWidth = constraints.maxWidth;
  } else {
    deviceWidth = constraints.maxHeight;
  }

  if (kIsWeb) {
    deviceWidth = constraints.maxWidth;
  }

  // If no user defined definitions are passed through use the defaults
  if (deviceWidth > 1050) {
    return ScreenType.desktop;
  }

  if (deviceWidth > 600) {
    return ScreenType.tablet;
  }

  if (deviceWidth < 280) {
    return ScreenType.watch;
  }

  return ScreenType.mobile;
}
