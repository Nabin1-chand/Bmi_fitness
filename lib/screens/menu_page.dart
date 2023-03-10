import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/screens/bmi_screen.dart';
// import 'package:flutter_app/screens/intro_screen.dart';
import 'package:flutter_app/screens/layout.dart';
import 'package:flutter_app/screens/weather_screen.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buidMenuItem(context),
      ),
    );
  }

  List<Widget> buidMenuItem(BuildContext context) {
    final List<String> menuTiles = [
      'Home',
      'BMI Calulator',
      'Weather',
      'Tranning',
      'services'
    ];
    List<Widget> menuItems = [];
    menuItems.add(const DrawerHeader(
      decoration: BoxDecoration(color: Color.fromARGB(255, 108, 189, 178)),
      child: Center(
        child: Text(
          "Global Fitness",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ));
    menuTiles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
          title: Text(element),
          onTap: () {
            switch (element) {
              case 'Home':
                screen = const MyApp();
                break;
              case 'BMI Calulator':
                screen = const BMIScreen();
                break;
              case 'Weather':
                screen = WeatherScreen();
                break;
            }

            // Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => screen,
                ));
          }));
    });
    return menuItems;
  }
}
