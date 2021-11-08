import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:screen_layout/src/enums.dart';

class DeviceUtils {
  final DeviceScreenType screenType;
  final Size screenSize;
  final Orientation orientation;

  DeviceUtils(
      {required this.screenType,
      required this.screenSize,
      required this.orientation});
}

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;

  if (kIsWeb) {
    deviceWidth = mediaQuery.size.width;
  }

  // If no user defined definitions are passed through use the defaults
  if (deviceWidth > 1050) {
    return DeviceScreenType.desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.tablet;
  }

  if (deviceWidth < 280) {
    return DeviceScreenType.watch;
  }

  return DeviceScreenType.mobile;
}
