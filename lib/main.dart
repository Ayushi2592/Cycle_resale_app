import 'package:cycle_resale_app/screens/home_screen.dart';
import 'package:cycle_resale_app/screens/login_screen.dart';
import 'package:cycle_resale_app/screens/registration_screen.dart';
import 'package:cycle_resale_app/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



final _auth = FirebaseAuth.instance;
String loggedUser = "";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( CycleResale());
}

class CycleResale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme : ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325),
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id : (context) => SplashScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        HomeScreen.id : (context) => HomeScreen(),


      },
    );
  }
}
