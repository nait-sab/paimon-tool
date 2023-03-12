import 'package:flutter/material.dart';
import 'package:paimon/controllers/navigation_controller.dart';
import 'package:paimon/views/accueil_view.dart';
import 'package:provider/provider.dart';

class Routes {
  static List<Page> applicationRoutes(BuildContext context) {
    NavigationController navigation = Provider.of<NavigationController>(context);
    List<Page> liste = [];

    // Route défaut
    liste.add(MaterialPage(child: AccueilView()));

    switch (navigation.route) {
      case "/accueil":
        liste.add(MaterialPage(child: AccueilView()));
        break;
    }

    return liste;
  }
}
