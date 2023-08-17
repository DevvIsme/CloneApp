import 'package:flutter/material.dart';

class tintuc extends StatelessWidget {
  const tintuc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'TIN TỨC - SỰ KIỆN',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Stack(
          children: <Widget>[
            Container(
                height: 200,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/tt1.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Vòng sơ khảo cuộc thi tìm kiếm tài năng- Doan Thi Diem”S Got Talents',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),

      ],
    );
  }
}