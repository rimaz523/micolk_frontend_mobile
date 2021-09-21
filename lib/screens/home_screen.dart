import 'package:flutter/material.dart';
import 'package:micolk_frontend_mobile/common/menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Mico.lk Marketplace')),
        drawer: MenuDrawer(),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home_background.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Center(
                child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white60),
                    child: Text(
                      'Welcome to our marketplace',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, shadows: [
                        Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 2.0,
                            color: Colors.grey)
                      ]),
                    )))));
  }
}
