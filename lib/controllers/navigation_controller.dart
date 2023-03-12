import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationController extends ChangeNotifier {
  String route = "/";

  void _changeRoute(String route) {
    this.route = route;
    notifyListeners();
  }

  /// Modifier la route actuelle par la [route]
  static void changerRoute(BuildContext context, String route) {
    Provider.of<NavigationController>(context, listen: false)._changeRoute(route);
  }

  /// Récupérer la route actuelle
  static String getRoute(BuildContext context) {
    return Provider.of<NavigationController>(context, listen: false).route;
  }
}
