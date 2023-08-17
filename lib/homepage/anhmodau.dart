import 'package:flutter/material.dart';

class anhmodau extends StatelessWidget {
  const anhmodau({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200,
          alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/banner.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: const Padding(
                            padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 5.0),
                            child: Text("Chao mung ban den voi",
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.white)))),
                    Column(
                      children: [
                        Container(
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                            ),
                            child: const Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 5.0, 20.0, 5.0),
                                child: Text(
                                    "Hệ thống dạy học trực tuyến (vnEdu LMS) của",
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white)))),
                      ],
                    ),
                    Container(
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                        ),
                        child: const Padding(
                            padding: EdgeInsets.fromLTRB(20.0, 5.0, 43.5, 0.0),
                            child: Text("Trường Mầm non An Phú",
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white)))),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text("Lễ khai giảng năm học 2023-2024",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white))))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
