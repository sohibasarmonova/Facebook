import 'package:filatter2/pages/facebook_page.dart';
import 'package:filatter2/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  //bildmod
  if(kDebugMode){
    print("kdebag");//dev//1
  }
  if(kProfileMode){
    print('kplatform');//tester
  }
  if(kReleaseMode){
    print("kRelesmod");//play market//2//app
  }
  runApp(const MyApp());
}

//hot-Reloat vs hot-Restart

//devTOOLS

//jIT vs AOT what


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FacebookPage(),
    );
  }
}

