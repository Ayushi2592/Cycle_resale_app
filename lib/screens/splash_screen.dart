import 'package:cycle_resale_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  static const String _title = 'Splash';
  @override
    Widget build(BuildContext context) {
      return Material(
        child: Container(
          padding: EdgeInsets.only(top: 100, bottom: 40),
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: NetworkImage("https://w0.peakpx.com/wallpaper/770/313/HD-wallpaper-cycle-neon-amoled-bike-dark-light-sign.jpg"),
              fit: BoxFit.cover,
              opacity: 0.6,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cycle Resale" , style: GoogleFonts.pacifico(
                fontSize: 50,
                color: Colors.white,
              ),),
              SizedBox( height: 25),
              Column(
                children: [
                  Text("Your one sort solution ",
                    style: GoogleFonts.pacifico(
                      fontSize: 30,
                      color: Colors.white,
                    ), ),
                  SizedBox(height: 80),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 30),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Let's Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}