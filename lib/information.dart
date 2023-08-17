import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newapp/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:newapp/constrants.dart';
import 'package:newapp/bar.dart';
import 'appbar.dart';

class InfoPage extends StatefulWidget {
  InfoPage({
    super.key,
    required this.dulieu,
  });

  var dulieu;

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: bar(context),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const Text(
                'THÔNG TIN HỌC SINH',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      onPressed: () {}, 
                      child: Text('Cập nhật hồ sơ/Mật khẩu')),
                ],
              ),
                      SizedBox(
                height: 10,
              ),

              CircleAvatar(
                minRadius: 50,
                maxRadius: 75,
  backgroundColor: Colors.blue,
  child: Padding(
    padding: const EdgeInsets.all(8), // Border radius
    child: ClipOval(child: Image.asset('assets/avt.jpg')),
  ),
),
                      SizedBox(
                height: 10,
              ),
              Center(child: Text(widget.dulieu['data']['user_profile']['full_name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                   SizedBox(
                height: 10,
              ),
              infoitem(
                info: widget.dulieu['data']['user_profile']['full_name'],
                title: 'Họ và tên: ',
                //   infor: infor,
              ),
              infoitem(
                info: widget.dulieu['data']['user_profile']['birthday'],
                title: 'Ngày sinh: ',
                // infor: infor,
              ),
              infoitem(
                info: widget.dulieu['data']['user_profile']['email'],
                title: 'Email: ',
                //    infor: infor,
              ),
              infoitem(
                info: (widget.dulieu['data']['user_profile']['gioi_tinh'].toString() == '0') ? 'Nam' : 'Nữ',
                title: 'Giới tinh: ',
                //    infor: infor,
              ),
              infoitem(
                info: (widget.dulieu['data']['user']['ten_don_vi']),
                title: 'Tên đơn vị: ',
                //    infor: infor,
              ),
             
              infoitem(
                info: (widget.dulieu['data']['khoiHoc']['name']),
                title: 'Khối học: ',
                //    infor: infor,
              ),
              infoitem(
                info: (widget.dulieu['data']['lopHoc']['ten']),
                title: 'Lớp học: ',
                //    infor: infor,
              ),
              infoitem(
                info: (widget.dulieu['data']['user']['user_name']),
                title: 'Tên đăng nhập: ',
                //    infor: infor,
              ),
              infoitem(
                info: (widget.dulieu['data']['user_profile']['phone']),
                title: 'Số điện thoại: ',
                //    infor: infor,
              ),
               infoitem(
                info: (widget.dulieu['data']['user_profile']['email']),
                title: 'Email: ',
                //    infor: infor,
              ),
              infoitem(
                info: (widget.dulieu['data']['user_profile']['address']),
                title: 'Địa chỉ: ',
                //    infor: infor,
              ),
            ],
          ),
        ));
  }
}

class infoitem extends StatelessWidget {
  infoitem({
    super.key,
    required this.title,
    required this.info,
  });

  var textStyle = const TextStyle(
    fontSize: 20,
  );

  final String info, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textStyle,
        ),
        SizedBox(height: 10,),
        Text(
          info,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
