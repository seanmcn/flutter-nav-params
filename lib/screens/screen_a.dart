import 'package:flutter/material.dart';
import 'package:flutter_nav_bar_routing/page_arguments.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation with params'),
      ),
      body: Center(
        child:  ElevatedButton(
          child: Text('Click me!'),
          onPressed: () {
            // print(context);
            Navigator.pushNamed(
              context,
              '/page/two',
              arguments: PageArguments(
                  id: 1,
                  title: "Example Title"
              ),
            );
          },
        ),
      ),
    );
  }
}