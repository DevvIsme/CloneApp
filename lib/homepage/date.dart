import 'package:flutter/material.dart';

class date extends StatelessWidget {
  const date({super.key, required this.d, required this.y});

  final String d, y;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset('assets/calender.png'),
        Positioned(
            top: 25,
            child: Column(
              children: [
                Text(d,
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Text(
                  y,
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                )
              ],
            )),
      ],
    ));
  }
}