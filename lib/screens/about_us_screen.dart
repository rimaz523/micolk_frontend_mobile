import 'package:flutter/material.dart';
import 'package:micolk_frontend_mobile/common/menu_drawer.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('About us')),
        drawer: MenuDrawer(),
        body: Center(child: FlutterLogo()));
  }
}
