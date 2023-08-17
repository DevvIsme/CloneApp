import 'package:flutter/material.dart';

class sllms extends StatelessWidget {
  const sllms({
    super.key,
    required this.sl,
    required this.ten,
  });

  final String sl;
  final String ten;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          sl,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        const SizedBox(height: 5),
        Text(
          ten,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}