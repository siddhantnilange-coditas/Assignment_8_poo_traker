import 'package:flutter/material.dart';

class TP extends StatelessWidget {
  const TP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){},
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
            ),
            child: Text(''),
          ),
        ),
      ),
    );
  }
}