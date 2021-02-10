import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COVID 19',
      theme: ThemeData( 
     scaffoldBackgroundColor: kBackgroundColor,
     fontFamily: "Poppins",
     textTheme: TextTheme(
       body1: TextStyle(color: kBodyTextColor), 
      )),
      home: HomeScreen(),
    );
   }
 }

 class HomeScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(children: <widget>[
         ClipPath(
           clipper: MyClipper(),
           child: Container(
             padding: EdgeInsets.only(left: 40, top: 50, right: 20),
           height: 350,
           width: double.infinity,
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topRight
               end: Alignment.bottonLeft,
               colors: [
                 color(0xFF3383CD),
                 color(0xFF11249F),
                 ],
                ),
                image: DecorationImage(
                  image:  AssetImage("assets/images/virus.png"),
                ),
              ),
              child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <widget>
              Align(
                alignment: Alignment.topRight,
              child: SvgPicture.assets("assetsName"),
              ),
              SizedBox(height: 20),
              Expanded(
                child: stack(
                  children: <widget>[SvgPicture.assets("assets/iconts/Drcorona.svg",
                  width: 230,
                  fit: BoxFit.fithWidth,
                  alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      "All you need \nis stay at home.",
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(), // I dont know why it can't work without container
                  ],
                      ),//stack
                    ),//expanded
                ],
              ), 
           ),
        ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        width:  double.infinity
        decoration: BoxDecorationj(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xFFESESES),
          ),
          ),
        ),
      ),
      ],
     ),
     );
   }
 }
