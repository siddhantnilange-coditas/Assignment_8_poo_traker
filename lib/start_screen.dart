import 'package:flutter/material.dart';
import 'package:poo_tracker/main.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      body:  Column(
          children: [
            const Expanded(flex: 208,child: SizedBox()),
            const Center(
              child: Text(
                'PooTracker',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Expanded(flex: 141,child: SizedBox()),
            SizedBox(
              // height: 128,
              // width: 190,
              child: Center(
                child: Image.asset(
                  'assets/icons/startscreen_cloud.png',
                  // width: 24,
                  // height: 24,
                ),
              ),
            ),
            const Expanded(flex: 384,child: SizedBox()),
            const Text('version 1.0', style: TextStyle(color: Colors.white, fontSize: 16),),
            const Expanded(flex: 40,child: SizedBox()),
          ],
        ),
      
    );
  }
}
