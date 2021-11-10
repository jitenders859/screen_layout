part of screen_layout;

/// Provides `Context`, `Orientation`, and `ScreenType` parameters to the builder function
typedef ResponsiveLayoutType = Widget Function(
    BuildContext, Orientation, ScreenType, DeviceType);

/// A widget that gets the device's details like orientation and constraints
///
/// Usage: Wrap MaterialApp with this widget
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.builder}) : super(key: key);

  /// Builds the widget whenever the orientation changes
  final ResponsiveLayoutType builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_context, constraints) {
      return OrientationBuilder(builder: (__context, orientation) {
        Device.setScreenSize(constraints, orientation);
        return builder(
            context, orientation, Device.screenType, Device.deviceType);
      });
    });
  }
}
