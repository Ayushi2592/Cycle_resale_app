import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BannerWidget extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
     return Neumorphic(
       child: Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height*.25,
         color: Color(0xFFE57734),
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 10,),
                         Text(
                           'Cycles',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             color: Colors.white,
                             letterSpacing: 1,
                             fontSize: 18,
                           ),
                         ),
                         SizedBox(height:20,),
                 SizedBox(
                   height: 45.0,
                   child: DefaultTextStyle(
                     style: const TextStyle(
                       fontSize: 15.0,
                       fontWeight: FontWeight.bold,
                     ),
                     child: AnimatedTextKit(
                       repeatForever: true,
                       isRepeatingAnimation: true,
                       animatedTexts: [
                         FadeAnimatedText('do IT!',
                         duration: Duration(seconds:4)),
                         FadeAnimatedText('do it RIGHT!!'),
                         FadeAnimatedText('do it RIGHT NOW!!!'),
                       ],
                     ),
                   ),
                 ),
                       ],
                     ),
                     Neumorphic(
                       style:NeumorphicStyle(
                         color: Colors.white,
                           oppositeShadowLightSource: true
                       ),
                       child:Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Image.network('https://firebasestorage.googleapis.com/v0/b/cycle-resale-app-9afeb.appspot.com/o/icons8-bicycle-64.png?alt=media&token=53d65743-a06b-49f5-8491-9390c5770a99'),
                       ),
                     ),
                   ],
                 ),
               ),
               Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Expanded(child: NeumorphicButton(
                     onPressed: () {},
                     style: NeumorphicStyle(color:Colors.white),
                     child: Text('Buy Cycle',textAlign: TextAlign.center,),
                   ),),
                   SizedBox(width: 20,),
                   Expanded(child: NeumorphicButton(
                     onPressed: () {},
                     style: NeumorphicStyle(color:Colors.white),
                     child: Text('Sell Cycle',textAlign: TextAlign.center),
                   ),),
                 ],
               )
             ],
           ),
         ),
       ),
     );
   }
 }
