import 'package:flutter/material.dart';
import 'package:newapp/homepage/homepage.dart';
import 'package:newapp/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller.dart';

AppBar bar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/logo.png',
          fit: BoxFit.contain,
          height: 32,
        ),
        const SizedBox(width: 5),
        const Expanded(
          child: Text(
            'TRƯỜNG THPT CÔNG NGHỆ THÔNG TIN VNPT',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        )
      ],
    ),
    actions: <Widget>[
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue.shade50,
          //borderRadius: BorderRadius.circular(8),
        ),
        child: IconButton(
          icon: const Icon(IconData(0xe44f, fontFamily: 'MaterialIcons')),
          iconSize: 30,
          color: Colors.blue.shade700,
          //highlightColor: Colors.black,
          onPressed: () {},
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      /*  Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue.shade50,
            //borderRadius: BorderRadius.circular(8),
          ),
          child: IconButton(
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            color: Colors.blue.shade700,
            iconSize: 30,
            onPressed: () {},
          ),
        ),*/
      PopupMenuButton<String>(
        elevation: 0,
        padding: const EdgeInsets.all(0),

        position: PopupMenuPosition.under,
        //offset:  Offset(-MediaQuery.of(context).size.width + 60, 0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: Colors.blue.shade50,
            //borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: Colors.blue.shade700,
          ),
        ),
        onSelected: (String result) async {
          switch (result) {
            case "Đăng xuất":
              SharedPreferences pref = await SharedPreferences.getInstance();
              await pref.setString('datatoken', "");
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
              break;
            case "Hồ sơ cá nhân":
              control ctl = control();
              final SharedPreferences pref =
                  await SharedPreferences.getInstance();
              String? tt = (pref.getString('datatoken'));
              ctl.info(tt, context);
              break;
            case "Đơn hàng":
              break;
            case "Dịch vụ của tôi":
              break;
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Hồ sơ cá nhân',
            child: Text('Hồ sơ cá nhân'),
          ),
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Đơn hàng',
            child: const Text('Đơn hàng'),
          ),
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Dịch vụ của tôi',
            child: const Text('Dịch vụ của tôi'),
          ),
          const PopupMenuItem<String>(
            value: 'Đăng xuất',
            child: Text('Đăng xuất'),
          ),
        ],
      ),
      PopupMenuButton<String>(
        elevation: 0,
        padding: const EdgeInsets.all(0),
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            minWidth: MediaQuery.of(context).size.width),
        position: PopupMenuPosition.under,
        //offset:  Offset(-MediaQuery.of(context).size.width + 60, 0),
        icon: const Icon(
          IconData(0xe3dc, fontFamily: 'MaterialIcons'),
          color: Colors.grey,
        ),
        onSelected: (String result) async {
          switch (result) {
            case "Sân Trường":
             
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
              break;
          
          }
        },
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Sân Trường',
            child: const Text('Sân Trường'),
          ),
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Kho học liệu',
            child: const Text('Kho học liệu'),
          ),
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Góc học tập',
            child: const Text('Góc học tập'),
          ),
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Đấu thường',
            child: const Text('Đấu thường'),
          ),
          PopupMenuItem<String>(
            onTap: () {},
            value: 'Đấu thường',
            child: const Text('Đổi ngôn ngữ'), //Thay bằng cái Icon
          ),
        ],
      ),
    ],
  );
}
