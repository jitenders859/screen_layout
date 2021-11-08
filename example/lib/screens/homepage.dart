import 'package:example/widgets/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:screen_layout/screen_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const AppBarTitle(),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: const HomePageBody(),
    );
  }
}

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends AppScreenState<HomePageBody> {
  @override
  Widget buildMobilePortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "LOREM IPSUM",
          style: TextStyle(
              fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 30),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Colors.grey[400],
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 250,
          child: Image.asset(
            "assets/responsive.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          width: 220,
          height: 50.0,
          child: TextButton(
            child: const Text(
              'SHARE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF69d9d9))),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Widget buildTabletPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "LOREM IPSUM",
          style: TextStyle(
              fontSize: 42.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: deviceUtils.screenSize.width * 0.15, vertical: 20),
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey[400],
                letterSpacing: 1.5,
                height: 1.5),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 250,
          child: Image.asset(
            "assets/responsive.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          width: 250,
          height: 60.0,
          child: TextButton(
            child: const Text(
              'SHARE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF69d9d9))),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Widget buildDesktopPortraitLayout(
      BuildContext context, DeviceUtils deviceUtils) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: deviceUtils.screenSize.width * 0.1),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "LOREM IPSUM",
                    style: TextStyle(
                        fontSize: 42.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[400],
                        letterSpacing: 1.5,
                        height: 1.5),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 250,
                    child: Image.asset(
                      "assets/responsive.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 250,
                    height: 60.0,
                    child: TextButton(
                      child: const Text(
                        'SHARE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFF69d9d9))),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
