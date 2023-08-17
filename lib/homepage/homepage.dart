import 'package:flutter/material.dart';
import 'package:newapp/bar.dart';
import 'package:newapp/homepage/anhmodau.dart';
import 'package:newapp/homepage/bangtin.dart';
import 'package:newapp/homepage/gioithieu.dart';
import 'package:newapp/homepage/hinhanh.dart';
import 'package:newapp/homepage/solieu.dart';
import 'package:newapp/homepage/tintuc.dart';
import 'package:newapp/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controller.dart';
import 'ttlms.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context),
      body: ListView(
        children: [
          const anhmodau(),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                BangTin(),
                SizedBox(height: 30),
                gioithieu(),
                SizedBox(height: 30),
                solieu(),
                SizedBox(height: 30),
                hinhanh(),
                SizedBox(height: 30),
                tintuc(),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const ttlms()
        ],
      ),
    );
  }

 
}
