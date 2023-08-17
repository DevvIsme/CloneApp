
import 'package:flutter/material.dart';

class hinhanh extends StatelessWidget {
  const hinhanh({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/banner.png'),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Image.asset('assets/anh1.png')),
            const SizedBox(width: 10),
            Expanded(child: Image.asset('assets/anh2.png')),
          ],
        ),
      ],
    );
  }
}