import 'package:flutter/material.dart';
import 'package:micolk_frontend_mobile/common/menu_drawer.dart';

class HowItWorksScreen extends StatelessWidget {
  const HowItWorksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('How it works')),
        drawer: MenuDrawer(),
        body: Center(child: FlutterLogo()));
  }
}
