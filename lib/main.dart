import 'package:cycle_resale_app/config/app_router.dart';
import 'package:cycle_resale_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import 'config/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName
    );
  }
}
