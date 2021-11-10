part of screen_layout;

class Device {
  /// Device's BoxConstraints
  static late BoxConstraints boxConstraints;

  /// Device's Orientation
  static late Orientation orientation;

  /// Type of Device
  static late DeviceType deviceType;

  /// Type of Screen
  static late ScreenType screenType;

  /// Device's Height
  static late double height;

  /// Device's Width
  static late double width;

  /// Device's Aspect Ratio
  static double get aspectRatio {
    return WidgetsBinding.instance?.window.physicalSize.aspectRatio ?? 1;
  }

  /// Devices' Pixel Ratio
  static double get pixelRatio {
    return WidgetsBinding.instance?.window.devicePixelRatio ?? 1;
  }

  /// Sets the Screen's size and Device's `Orientation`,
  /// `BoxConstraints`, `Height`, and `Width`
  static void setScreenSize(
      BoxConstraints constraints, Orientation currentOrientation) {
    // Sets boxconstraints and orientation
    boxConstraints = constraints;
    orientation = currentOrientation;

    // Sets screen width and height
    width = boxConstraints.maxWidth;
    height = boxConstraints.maxHeight;

    // Sets DeviceType

    deviceType = getDeviceType();

    // Sets ScreenType
    screenType = getScreenType(constraints);
  }
}

class Adaptive {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  static double h(num height) => height.h;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's width
  static double w(num width) => width.w;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  static double sp(num scalablePixel) => scalablePixel.sp;
}
