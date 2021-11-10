part of screen_layout;

abstract class BaseScreenState<W extends StatefulWidget> extends State<W>
    implements BaseState {}

abstract class BaseWidgetState<W extends StatelessWidget> implements BaseState {
}

abstract class BaseState {
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils);

  Widget buildMobileLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils);

  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils);

  Widget buildTabletLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils);

  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils);

  Widget buildDesktopLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils);
}
