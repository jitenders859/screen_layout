import 'package:flutter/material.dart';
import 'package:screen_layout/src/base_screen.dart';
import 'package:screen_layout/src/device_utils.dart';
import 'package:screen_layout/src/enums.dart';

/// most basic app screen state handles the screen orientations
/// and user can build portrait design in [buildPortraitLayout]
/// and landscape design in [buildLandscapeLayout]

// ignore: must_be_immutable
abstract class AppWidgetState extends StatelessWidget implements BaseState {
  late Size screenSize;

  AppWidgetState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      MediaQueryData mediaQuery = MediaQuery.of(context);
      screenSize = MediaQuery.of(context).size;
      DeviceScreenType deviceType = getDeviceType(mediaQuery);

      if (deviceType == DeviceScreenType.desktop) {
        return MediaQuery.of(context).orientation == Orientation.portrait
            ? buildDesktopPortraitLayout(context, deviceType)
            : buildDesktopLandscapeLayout(context, deviceType);
      } else if (deviceType == DeviceScreenType.tablet) {
        return MediaQuery.of(context).orientation == Orientation.portrait
            ? buildTabletPortraitLayout(context, deviceType)
            : buildTabletLandscapeLayout(context, deviceType);
      } else {
        return MediaQuery.of(context).orientation == Orientation.portrait
            ? buildMobilePortraitLayout(context, deviceType)
            : buildMobileLandscapeLayout(context, deviceType);
      }
    });
  }

  @override
  Widget buildMobileLandscapeLayout(
      BuildContext context, DeviceScreenType deviceScreenType) {
    return buildMobilePortraitLayout(context, deviceScreenType);
  }

  @override
  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceScreenType deviceScreenType) {
    return buildMobileLandscapeLayout(context, deviceScreenType);
  }

  @override
  Widget buildTabletLandscapeLayout(
      BuildContext context, DeviceScreenType deviceScreenType) {
    return buildTabletPortraitLayout(context, deviceScreenType);
  }

  @override
  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceScreenType deviceScreenType) {
    return buildTabletLandscapeLayout(context, deviceScreenType);
  }

  @override
  Widget buildDesktopLandscapeLayout(
      BuildContext context, DeviceScreenType deviceScreenType) {
    return buildDesktopPortraitLayout(context, deviceScreenType);
  }
}
