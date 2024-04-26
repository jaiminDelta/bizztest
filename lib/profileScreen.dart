import 'package:flutter/material.dart';
import 'package:testbizz/scaling.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  
  @override
  Widget build(BuildContext context) {
    ScalingUtility scale = ScalingUtility(context: context)
      ..setCurrentDeviceSize();
    return Scaffold(
      body: Container(
        height:scale.fh ,
        width: scale.fw,
        child: Column(
          children: [Container(height: scale.getScaledHeight(50),width: scale.fullWidth,color: Colors.black,)],
        ),

      ),
    );
  }
}