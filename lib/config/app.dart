import 'package:flutter/material.dart';
import 'package:paimon/config/routes.dart';
import 'package:paimon/controllers/navigation_controller.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: Routes.applicationRoutes(context),
        onPopPage: (route, resultat) {
          bool popStatus = route.didPop(resultat);
          if (popStatus) {
            Provider.of<NavigationController>(context, listen: false).route = "/accueil";
          }
          return popStatus;
        },
      ),
    );
  }
}
