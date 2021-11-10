part of screen_layout;

/// most basic app screen state handles the screen orientations
/// and user can build portrait design in [buildPortraitLayout]
/// and landscape design in [buildLandscapeLayout]

abstract class AppWidgetState extends StatelessWidget
    implements BaseWidgetState {
  const AppWidgetState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_context, boxConstraints) {
      DeviceUtils _deviceUtils = DeviceUtils(
          deviceType: Device.deviceType,
          screenType: Device.screenType,
          screenSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
          orientation: Device.orientation);

      if (_deviceUtils.screenType == ScreenType.desktop) {
        return MediaQuery.of(context).orientation == Orientation.portrait
            ? buildDesktopPortraitLayout(context, _deviceUtils)
            : buildDesktopLandscapeLayout(context, _deviceUtils);
      } else if (_deviceUtils.screenType == ScreenType.tablet) {
        return MediaQuery.of(context).orientation == Orientation.portrait
            ? buildTabletPortraitLayout(context, _deviceUtils)
            : buildTabletLandscapeLayout(context, _deviceUtils);
      } else {
        return MediaQuery.of(context).orientation == Orientation.portrait
            ? buildMobilePortraitLayout(context, _deviceUtils)
            : buildMobileLandscapeLayout(context, _deviceUtils);
      }
    });
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
}
