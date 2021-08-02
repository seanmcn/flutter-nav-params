import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter_nav_bar_routing/screens/screen_a.dart';
import 'package:flutter_nav_bar_routing/screens/screen_b.dart';

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persistent Bottom Nav Bar example project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);
  String? module;

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      decoration: NavBarDecoration(boxShadow: [BoxShadow()]),
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style14,

    );
  }

  List<Widget> _buildScreens() {
    return [
      ScreenA(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        title: 'Home',
        icon: Icon(Icons.home),
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: '/page/one',
            routes: {
              '/page/one': (context) => ScreenA(),
              '/page/two': (context) => ScreenB(),
            },
          )
      ),
      PersistentBottomNavBarItem(
          title: 'Help',
          icon: Icon(Icons.help)
      ),
    ];
  }
}

void main() async {
  // await initDb();
  runApp(new MyApp());
}