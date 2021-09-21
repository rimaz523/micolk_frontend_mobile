import 'package:flutter/material.dart';
import 'package:micolk_frontend_mobile/common/menu_drawer.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Contact us')),
        drawer: MenuDrawer(),
        body: Center(child: FlutterLogo()));
  }
}
