
import 'package:flutter/material.dart';

class gioithieu extends StatelessWidget {
  const gioithieu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('CHÀO MỪNG ĐẾN VỚI HỆ THỐNG GIÁO DỤC TRƯỜNG MẦM NON AN PHÚ',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )),
        Text(
            'Chào mừng các bậc cha mẹ học sinh và các con đã trở thành thành viên của Ngôi nhà chung Đoàn Thị Điểm – Hà Nội! Chúng tôi cảm thấy thật vinh dự khi được Quý vị và các con chọn là những người đầu tiên đồng hành trên con đường giúp đỡ các con trưởng thành.')
      ],
    );
  }
}