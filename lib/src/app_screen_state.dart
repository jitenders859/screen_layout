import 'package:flutter/material.dart';
import 'package:screen_layout/src/base_screen.dart';
import 'package:screen_layout/src/device_utils.dart';
import 'package:screen_layout/src/enums.dart';

/// most basic app screen state handles the screen orientations
/// and user can build portrait design in [buildPortraitLayout]
/// and landscape design in [buildLandscapeLayout]

abstract class AppScreenState<W extends StatefulWidget>
    extends BaseScreenState<W> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DeviceScreenType _deviceType = getDeviceType(MediaQuery.of(context));
    Orientation _orientation = MediaQuery.of(context).orientation;
    Size _screenSize = MediaQuery.of(context).size;

    DeviceUtils _deviceUtils = DeviceUtils(
        screenType: _deviceType,
        screenSize: _screenSize,
        orientation: _orientation);

    if (_deviceType == DeviceScreenType.desktop) {
      return MediaQuery.of(context).orientation == Orientation.portrait
          ? buildDesktopPortraitLayout(context, _deviceUtils)
          : buildDesktopLandscapeLayout(context, _deviceUtils);
    } else if (_deviceType == DeviceScreenType.tablet) {
      return MediaQuery.of(context).orientation == Orientation.portrait
          ? buildTabletPortraitLayout(context, _deviceUtils)
          : buildTabletLandscapeLayout(context, _deviceUtils);
    } else {
      return MediaQuery.of(context).orientation == Orientation.portrait
          ? buildMobilePortraitLayout(context, _deviceUtils)
          : buildMobileLandscapeLayout(context, _deviceUtils);
    }
  }

  @override
  Widget buildMobileLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return buildMobilePortraitLayout(context, deviceUtils);
  }

  @override
  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return buildMobileLandscapeLayout(context, deviceUtils);
  }

  @override
  Widget buildTabletLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return buildTabletPortraitLayout(context, deviceUtils);
  }

  @override
  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return buildTabletLandscapeLayout(context, deviceUtils);
  }

  @override
  Widget buildDesktopLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return buildDesktopPortraitLayout(context, deviceUtils);
  }

  @override
  Orientation get orientation => MediaQuery.of(context).orientation;

  @override
  Size get screenSize => MediaQuery.of(context).size;

  @override
  DeviceScreenType get deviceType => getDeviceType(MediaQuery.of(context));
}
