import 'package:fish/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Ifile:///D:/Users/lenovo/AndroidStudioProjects/flutter_hello/lib/taps.dart
// Uimport 'package:flutter/material.dart';
// import 'package:fish/main.dart';
// import './taps/home.dart';
import './tbas/home.dart';
import './tbas/play.dart';
import 'tbas/plus.dart';
import 'tbas/news.dart';
import 'tbas/me.dart';
//
class Taps extends StatefulWidget {
  const Taps({super.key});

  @override
  State<Taps> createState() => _TapsState();
}

class _TapsState extends State<Taps> {
  int _currentIndex = 0;
  List<Widget> _page = const [home(), play(), plus(), news(), me()];
  List<Widget> _pageTitle = const [
    homeTitle(),
    playTitle(),
    plusTitle(),
    newsTitle(),
    meTitle()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              shadowColor: null,
              elevation: 0,
              backgroundColor: Colors.white,
              title: _pageTitle[_currentIndex]),
          body: _page[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              iconSize: 30,
              fixedColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.g_mobiledata), label: "会玩"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.abc_outlined), label: "发布"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.kayaking), label: "信息"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.u_turn_left), label: "我的")
              ]),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      SizedBox(height: 20),
      Icon(
        Icons.home,
        size: 40,
        color: Colors.red,
      )
    ]);
  }
}
