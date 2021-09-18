import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:screen_layout/src/enums.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  double deviceWidth = mediaQuery.size.shortestSide;

  if (kIsWeb) {
    deviceWidth = mediaQuery.size.width;
  }

  // If no user defined definitions are passed through use the defaults
  if (deviceWidth > 950) {
    return DeviceScreenType.desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreenType.tablet;
  }

  // if (deviceWidth < 300) {
  //   return DeviceScreenType.watch;
  // }

  return DeviceScreenType.mobile;
}