// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';

class solieu extends StatelessWidget {
  const solieu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        titlesolieu(
            bt: const IconData(0xf37d, fontFamily: 'MaterialIcons'),
            sl: '42',
            ten: 'Giao vien',
            mki: Colors.blue.shade100,
            mi: Colors.blue),
        titlesolieu(
            bt: const IconData(0xe559, fontFamily: 'MaterialIcons'),
            sl: '98',
            ten: 'Hoc Sinh',
            mki: Colors.pink.shade100,
            mi: Colors.pink),
        titlesolieu(
            bt: const IconData(0xe0ef, fontFamily: 'MaterialIcons'),
            sl: '1,8K',
            ten: 'Hoc Lieu',
            mki: Colors.green.shade100,
            mi: Colors.green),
        titlesolieu(
            bt: Icons.favorite_border,
            sl: '91',
            ten: 'Cuoc Thi',
            mki: Colors.cyan.shade100,
            mi: Colors.cyan),
        titlesolieu(
            bt: const IconData(0xe6bd, fontFamily: 'MaterialIcons'),
            sl: '616',
            ten: 'Luot truy cap',
            mki: Colors.yellow.shade100,
            mi: Colors.yellow),
      ],
    );
  }
}

class titlesolieu extends StatelessWidget {
  titlesolieu({
    super.key,
    required this.bt,
    required this.sl,
    required this.ten,
    required this.mki,
    required this.mi,
  });

  IconData bt;
  String sl;
  String ten;
  Color mki;
  Color mi;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                  offset: Offset(1, 2),
                )
              ],
              color: mki,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              bt,
              size: 25,
              color: mi,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          sl,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text(ten)
      ],
    );
  }
}