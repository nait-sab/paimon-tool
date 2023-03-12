import 'package:flutter/material.dart';
import 'package:paimon/config/app.dart';
import 'package:paimon/controllers/navigation_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider(create: (_) => NavigationController()),
      ],
      child: App(),
    ),
  );
}
