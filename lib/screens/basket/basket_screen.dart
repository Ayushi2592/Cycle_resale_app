import 'package:flutter/material.dart';

class BasketScreen extends StatelessWidget {
  static const String routeName = '/';

  late BuildContext context;
  static Route route(){
    return MaterialPageRoute(
      builder: (_) => BasketScreen(),
      settings: RouteSettings(name: routeName),
    );
  }
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(title: Text('Location')),
      body: Center(
        child: ElevatedButton(
          child: Text('Home Screen'),
          onPressed: () {
            Navigator.pushNamed(context,'/');
          },
        ),
      ),
    );
  }
}