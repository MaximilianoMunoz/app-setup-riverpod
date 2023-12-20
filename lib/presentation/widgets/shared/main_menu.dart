import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem {
  MenuItem({
    required this.title,
    required this.icon,
    required this.route,
  });
  final String title;
  final IconData icon;
  final String route;
}

final menuItems = <MenuItem>[
  MenuItem(
    title: 'Biometrics',
    icon: Icons.fingerprint,
    route: '/biometrics',
  ),
  MenuItem(
    title: 'Pokemons',
    icon: Icons.catching_pokemon,
    route: '/pokemons',
  ),
];

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: menuItems
          .map(
            (item) => HomeMenuItem(
              title: item.title,
              icon: item.icon,
              route: item.route,
            ),
          )
          .toList(),
    );
  }
}

class HomeMenuItem extends StatelessWidget {
  const HomeMenuItem({
    required this.title,
    required this.icon,
    required this.route,
    super.key,
    this.bgColors = const [Colors.lightBlue, Colors.blue],
  });

  final String title;
  final IconData icon;
  final String route;
  final List<Color> bgColors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(route),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: bgColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
