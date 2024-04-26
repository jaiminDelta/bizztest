import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:testbizz/form/bankScreen.dart';
import 'package:testbizz/form/binding.dart';
import 'package:testbizz/form/formScreen.dart';
import 'package:testbizz/otpvarify/otpScreen.dart';
import 'package:testbizz/profileScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //initialBinding: bindingg(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: profileScreen(),
    );
  }
}
