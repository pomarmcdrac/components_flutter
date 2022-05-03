import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    //TODO: borrar home
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_sharp),
    MenuOption(route: 'listviwe1', name: 'Listeview tipo 1', screen: const Listview1Screen(), icon: Icons.format_list_bulleted_sharp),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.format_list_numbered),
    MenuOption(route: 'card', name: 'Tarjetas - Card', screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_rounded),
    MenuOption(route: 'avatar', name: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'Animated Container', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_outlined),
    MenuOption(route: 'inputs', name: 'Text Inputs', screen: const InputsScreen(), icon: Icons.input_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({ 'home' : ( BuildContext context) => const HomeScreen() });

    for (final option in menuOption ) {
      appRoutes.addAll({ option.route : ( BuildContext context) => option.screen });
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home'      : ( BuildContext context ) => const HomeScreen(),
  //   'listview1' : ( BuildContext context ) => const Listview1Screen(),
  //   'listview2' : ( BuildContext context ) => const Listview2Screen(),
  //   'card'      : ( BuildContext context ) => const CardScreen(),
  //   'alert'     : ( BuildContext context ) => const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute ( RouteSettings settings ) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}