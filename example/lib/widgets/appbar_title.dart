import 'package:example/widgets/appbar_drawer.dart';
import 'package:flutter/material.dart';
import 'package:screen_layout/screen_layout.dart';

class AppBarTitle extends AppWidgetState {
  const AppBarTitle({Key? key}) : super(key: key);

  @override
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          AppDrawer(),
          Expanded(
            child: Container(),
          ),
          const Text(
            "STAIRCASE",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.1.w),
      child: Row(
        children: [
          const Text(
            "STAIRCASE",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 50,
              child: AppDrawer(),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.15.w),
      child: Row(
        children: [
          const Text(
            "STAIRCASE",
            style: TextStyle(
                fontSize: 38, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 50,
              child: AppDrawer(),
            ),
          )
        ],
      ),
    );
  }
}
