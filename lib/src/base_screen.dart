import 'package:flutter/material.dart';
import 'package:screen_layout/src/device_utils.dart';
import 'package:screen_layout/src/enums.dart';

// Base
abstract class BaseScreenState<W extends StatefulWidget> extends State<W>
    implements BaseState {
  get screenSize;

  get orientation;
}

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
