import 'package:flutter/material.dart';
import '../screens/about_us_screen.dart';
import '../screens/contact_us_screen.dart';
import '../screens/home_screen.dart';
import '../screens/how_it_works_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'How it works',
      'Contact us',
      'About us',
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text('Mico.lk',
            style: TextStyle(color: Colors.white, fontSize: 28))));
    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(element, style: TextStyle(fontSize: 18)),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = HomeScreen();
              break;
            case 'How it works':
              screen = HowItWorksScreen();
              break;
            case 'Contact us':
              screen = ContactUsScreen();
              break;
            case 'About us':
              screen = AboutUsScreen();
              break;
            default:
              screen = HomeScreen();
          }
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
