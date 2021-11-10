part of screen_layout;

extension DeviceExt on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  double get h => this * Device.height / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's width
  double get w => this * Device.width / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's pixel density
  double get sp =>
      this *
      (((h + w) + (Device.pixelRatio * Device.aspectRatio)) / 2.08) /
      100;
}

extension ScreenExt on bool {
  ///
  /// check if bool expression matches the screentype statement
  bool get isMobile => (Device.screenType == ScreenType.mobile) == this;
  bool get isDesktop => (Device.screenType == ScreenType.desktop) == this;
  bool get isWatch => (Device.screenType == ScreenType.watch) == this;
  bool get isTablet => (Device.screenType == ScreenType.tablet) == this;
}
