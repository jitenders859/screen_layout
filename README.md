# Responsive Screen Layout Builder

Screen Layout Builder helps implement a responsive layout by providing helper methods for Desktop, Tablet and mobile. 

![Responsive Image](https://user-images.githubusercontent.com/41188075/133888527-e4ef6880-16d1-4b85-9171-79a57f8a7f86.png)

# Content

- [Installation](#Installation)
- [Parameters](#Parameters)
- [Screen Layouts](#BuildLayout)
- [Orientation](#Orientation)
- [Community Support](#community-support)

# Installation
Add `screen_layout` to pubspec.yaml
```yaml
dependencies:
  screen_layout: 0.01
```

# Parameters

* `screenSize` - Returns the Device's BoxConstraints
* `orientation` - Returns the Screen Orientation (portrait or landscape)
* `screenType` - Returns the Screen Type (mobile or tablet or desktop)

# Usage

## Import the Package
```dart
import 'package:screen_layout/screen_layout.dart';
```

## extend with AppScreenState and implement method buildMobilePortraitLayout for StatefulWidget
```dart

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends AppScreenState<HomePage> {

  @override
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(),
        )
    );
  }
}

```


## extend with AppWidgetState and implement method buildMobilePortraitLayout for StatelessWidget
```dart

class ProgressBar extends AppWidgetState {
  const ProgressBar({Key? key}) : super(key: key);


  @override
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Center(
      child: Platform.isIOS
          ? const CupertinoActivityIndicator(
              radius: 50,
            )
          : const SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ),
    );
  }
}

```


## Orientation

If you want to support both portrait and landscape orientations
```dart
 @override
 Widget buildMobilePortraitLayout(BuildContext context, DeviceUtils deviceUtils}

 @override
 Widget buildMobileLandscapeLayout(BuildContext context, DeviceUtils deviceUtils}
```


## ScreenType

If you want the same layout to look different in desktop, tablet and mobile, use the ``deviceUtils.screenType`` method:

```dart
deviceUtils.screenType == DeviceScreenType.tablet
  ? Container(   // Widget for Tablet
      width: 200,
      height: 25,
   )
  : deviceUtils.screenType == DeviceScreenType.desktop 
  ? Container(   // Widget for Mobile
      width: 400,
      height: 50,
   ) : Container(   // Widget for Mobile
      width: 100,
      height: 12.5,
   )
```

## BuildLayout

If you want the same layout to look different in tablet and mobile, override ``buildMobilePortraitLayout, buildTabletPortraitLayout, buildDesktopPortraitLayout`` method:


```dart
class ProgressBar extends AppWidgetState {
  const ProgressBar({Key? key}) : super(key: key);


  @override
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Container(
    );
  }

  @override
  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Center(
    );
  }

  @override
  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Center(
    );
  }

  @override
  Widget buildMobileLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Center(
    );
  }

  @override
  Widget buildTabletLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Center(
    );
  }

  @override
  Widget buildDesktopLandscapeLayout(
      BuildContext context, DeviceUtils deviceUtils) {
      return Center(
    );
  }
}
```

# Community Support

If you have any suggestions or issues, feel free to open an [issue](https://github.com/jitenders859/screen_layout/issues)

If you would like to contribute, feel free to create a [PR](https://github.com/jitenders859/screen_layout/pulls)