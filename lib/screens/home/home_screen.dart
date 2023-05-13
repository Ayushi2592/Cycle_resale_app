import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            textStyle: TextStyle(fontSize: 20),
          ),
          child: Text('Voucher Screen',
           style: Theme.of(context)
              .textTheme
              .headline2
              ?.copyWith(color: Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, '/Location');
          },
        ),
      ),
    );
  }
}
