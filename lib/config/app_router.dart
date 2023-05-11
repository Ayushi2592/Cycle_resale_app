import 'package:cycle_resale_app/screens/basket/basket_screen.dart';
import 'package:cycle_resale_app/screens/checkout/checkout_screen.dart';
import 'package:cycle_resale_app/screens/home/home_screen.dart';
import 'package:cycle_resale_app/screens/location/location_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print('The Route is: ${settings.name}');

    switch (settings.name){
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }
  
  static Route _errorRoute(){
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: Text('error'),),),
      settings: RouteSettings(name: '/error'),
    );
  }

}