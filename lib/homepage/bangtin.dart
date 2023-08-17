
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'mautin.dart';

class BangTin extends StatelessWidget {
  const BangTin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6,
            offset: Offset(1, 2),
          )
        ],
        color: Colors.white,
      ),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          color: Colors.blue[50],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                    const IconData(0xf0541, fontFamily: 'MaterialIcons'),
                    color: Colors.blue.shade900,
                    size: 30),
              ),
              const SizedBox(width: 10),
              const Text(
                'BẢNG TIN',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(220, 13, 72, 161),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              mautin(
                  ngay: '25.02',
                  nam: 'Nam 2077',
                  nd: 'Tiếp tục chủ đề sinh hoạt tháng 12 “Kỉ luật là sức mạnh”, các bạn học sinh trường tiểu học Đoàn Thị Điểm – Hà Nội cần: + Lên kế hoạch cho bản thân để tự ôn tập thi học kì 1. + Thực hiện nền nếp, vệ sinh trong các lớp học Và cùng nhau tìm hiểu về Quân đội Nhân dân Việt Nam, chú bộ đội thông qua câu hỏi trong giờ chào cờ tuần này.'),
              const SizedBox(height: 10),
              mautin(
                  ngay: '05.01',
                  nam: 'Nam 2003',
                  nd: 'Một ngày trải nghiệm với thật nhiều hoạt động thú vị, vừa học vừa rèn luyện kĩ năng dành riêng cho các bạn học sinh khối 1 trường tiểu học Đoàn Thị Điểm – Hà Nội'),
              const SizedBox(height: 10),
              InkWell(
                onTap: () { },
                child: Text(
                  "Xem Tat Ca",
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

