import 'package:flutter/material.dart';

import 'date.dart';

// ignore: must_be_immutable
class mautin extends StatelessWidget {
  mautin({
    super.key,
    required this.ngay,
    required this.nam,
    required this.nd,
  });

  String ngay, nam, nd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        date(d: ngay, y: nam),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            nd,
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
