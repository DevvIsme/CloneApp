import 'package:flutter/material.dart';
import 'package:newapp/homepage/sllms.dart';


class ttlms extends StatefulWidget {
  const ttlms({
    super.key,
  });

  @override
  State<ttlms> createState() => _ttlmsState();
}

class _ttlmsState extends State<ttlms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(("assets/icon.png")),
                const SizedBox(width: 10),
                const Expanded(
                    child: Text(
                  'NỀN TẢNG DẠY HỌC TRỰC TUYẾN VNEDU LMS',
                  overflow: TextOverflow.visible,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ],
            ),
            const SizedBox(height: 5),
            const Text(
              'Hệ thống dạy học trực tuyến (LMS) là công cụ trợ giúp đắc lực cho nhà trường, các thầy cô, các bậc phụ huynh và học sinh trong việc dạy và học trực tuyến. Hãy đăng nhập ngay để khám phá những giời học tuyệt vời với vnEdu LMS',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sllms(sl: '20K+', ten: 'Truong hoc'),
                sllms(sl: '600+', ten: 'Giao Vien'),
                sllms(sl: '8M+', ten: 'Hoc Sinh'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('assets/saokhue.png', width: 150),
                    const Text('2 danh hiệu'),
                    const Text('Sao Khuê 2019')
                  ],
                ),
                Column(
                  children: [
                    Image.asset('assets/giaivang.png', width: 150),
                    const Text('1 Giải vàng quốc tế'),
                    const Text('Stevie Awards IBA 2021')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}