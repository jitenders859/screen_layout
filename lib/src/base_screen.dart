import 'package:flutter/material.dart';
import 'package:screen_layout/src/enums.dart';

// Base
abstract class BaseScreenState<W extends StatefulWidget> extends State<W>
    implements BaseState {
  get screenSize;

  get orientation;
}

abstract class BaseState {
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceScreenType deviceScreenType);

  Widget buildMobileLandscapeLayout(
      BuildContext context, DeviceScreenType deviceScreenType);

  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceScreenType deviceScreenType);

  Widget buildTabletLandscapeLayout(
      BuildContext context, DeviceScreenType deviceScreenType);

  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceScreenType deviceScreenType);

  Widget buildDesktopLandscapeLayout(
      BuildContext context, DeviceScreenType deviceScreenType);
}
