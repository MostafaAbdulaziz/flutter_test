import 'dart:io';

import 'package:adaptiveandresponsive/desktop.dart';
import 'package:adaptiveandresponsive/mobile.dart';
import 'package:flutter/material.dart';

void main() {
  print(Platform.operatingSystem);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Builder(builder: (BuildContext context){
        if(MediaQuery.of(context).size.width<=565)
          return MobileScreen();
        return const DesktopScreen();
      })
    );
  }
}


// create project
