import 'package:cycle_resale_app/widgets/banner_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'chat_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  late String messageText;


  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try{
      final user = await _auth.currentUser!;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12,0,12,8),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            color:Colors.white,
                            child:Padding(
                              padding: const EdgeInsets.fromLTRB(12,0,12,8),
                              child: Row(
                                children: [
                                   Expanded(
                                       child: SizedBox(
                                         height: 40,
                                         child: TextField(
                                            decoration: InputDecoration(
                                              prefixIcon: Icon(Icons.search,),
                                              labelText: 'Find Cycles for you',
                                              labelStyle: TextStyle(fontSize: 12),
                                              contentPadding: EdgeInsets.only(left:10,right:10),
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(6)
                                              )
                                            ),
                                          ),
                                       ),
                                     ),
                                   SizedBox(width: 10,),
                                ],
                              ),
                            )
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(12,0,12,8),
                              child: Column(
                                children: [
                                  BannerWidget(),
                                ],
                              )
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}