import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    print("Route name is:");
    print(ModalRoute.of(context)!.settings.name);

    print("Route arguments are:");
    print(arguments);

    return Scaffold(
      appBar: AppBar(
        title: Text('Parameter example'),
      ),
      body: Center(
        child: Text("Parameter example"),
      ),
    );
  }
}