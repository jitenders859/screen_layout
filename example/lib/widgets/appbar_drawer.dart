import 'package:flutter/material.dart';
import 'package:screen_layout/screen_layout.dart';

class AppDrawer extends AppWidgetState {
  AppDrawer({Key? key}) : super(key: key);

  @override
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
        size: 28,
      ),
    );
  }

  @override
  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          'Messages',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
