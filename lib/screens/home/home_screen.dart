import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ElevatedButton(
        child: Text('Location Screen'),
        onPressed: () {
          Navigator.pushNamed(context, '/Location');
        },
      ),
    );
  }
}
