// package:fish/taps.dart
import 'package:fish/tabs.dart';
// Nfile:///D:/Users/lenovo/AndroidStudioProjects/fish/lib/taps/home.dart
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fish/main.dart';
import 'package:fish/tbas/news.dart';
class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            ListView(
          children: [
            Container(
              child: Column(
                children: [
                  recommend(),
                  SlidingFeature(),
                  classify(),
                ],
              ),
            ),
            Container(
              child: Shopping(),
            )
          ],
        ));
  }
}
class SlidingFeature extends StatelessWidget {
  const SlidingFeature({super.key});
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 6; i++) {
      tempList.add(
        Container(
          width: 120,
          child: NavigationHomePage(),
        ),
      );
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: Color.fromARGB(205, 205, 205, 205),
          borderRadius: BorderRadius.circular(19)),
      child: ListView(
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.horizontal, //
          children: _initGridViewData()),
    );
  }
}
class recommend extends StatelessWidget {
  const recommend({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(5)),
      child: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      crossAxisSpacing: 4,
      children: const [
        Recommend(),
        Recommend(),
      ],
    );
  }
}
class Recommend extends StatelessWidget {
  const Recommend({super.key});
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 4; i++) {
      tempList.add(Container(
          // decoration: BoxDecoration(
          //   border: new Border.all(color: Color(0xFFFF0000), width: 0.5),
          // ),
          child: Column(
        children: [
          Container(
            child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
              fit: BoxFit.fill,
              height: 50,
              width: 50,
            ),
          ),
          Container(
            child: Text("aaa",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          )
        ],
      )));
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(205, 205, 205, 205),
            borderRadius: BorderRadius.circular(19)),
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    child: const Text(
                        "闲鱼集市"
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Text(
                      "折扣好物",
                      style: TextStyle(
                          color: Color.fromARGB(255, 232, 94, 94),
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // height: 130,
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 3,
                childAspectRatio: 1.0,
                children: _initGridViewData(),
              ),
            )
          ],
        ));
  }
  }
// 
class CommodityNavigationText extends StatelessWidget {
  const CommodityNavigationText({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        children: [
          Text("aaa"),
          Text("bbb",
            style: new TextStyle(
                fontSize: 12, color: const Color.fromARGB(205, 133, 130, 130)),
          )
        ],
      ),
    );
  }
}
class CommodityNavigationImg extends StatelessWidget {
  const CommodityNavigationImg({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
        fit: BoxFit.cover,
        width: 40,
        height: 30,
      ),
    );
  }
}
class NavigationHomePage extends StatelessWidget {
  const NavigationHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: const [CommodityNavigationText(), CommodityNavigationImg()],
    );
  }
}
class cainixihuan extends StatelessWidget {
  const cainixihuan({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text("aaa"
    ));
  }
}
class classify extends StatelessWidget {
  const classify({super.key});
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 6; i++) {
      tempList.add(Container(
        width: 80,
        margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
        decoration: BoxDecoration(
            color: Color.fromARGB(205, 205, 205, 205),
            borderRadius: BorderRadius.circular(19)),
        alignment: Alignment.center,
        child: cainixihuan(),
      ));
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView(
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.horizontal, //
        children: _initGridViewData(),
      ),
    );
  }
}
class Shopping extends StatelessWidget {
  const Shopping({super.key});
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 6; i++) {
      tempList.add(
        shop(),
      );
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: _initGridViewData(),
    );
  }
}
class shop extends StatelessWidget {
  const shop({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 150,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
              width: 150,
              height: 199,
              fit: BoxFit.cover,
              // ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "iphone X",
                      overflow: TextOverflow.clip,
                      maxLines: 2,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "￥35",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0),
                    horizontalTitleGap: 0,
                    minVerticalPadding: 0,
                    leading: YuanImage(),
                    title: Text(
                      "xxxxx",
                      overflow: TextOverflow.clip,
                    ),
                    trailing: Container(
                      height: 20,
                      width: 80,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(205, 147, 197, 251),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text("xxxxxx",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
  }
class YuanImage extends StatelessWidget {
  const YuanImage({super.key});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child:Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
        width: 20,
        height: 20,
        fit: BoxFit.cover,
      ),
    );
  }
}
//appBar
class homeTitle extends StatefulWidget {
  const homeTitle({super.key});
  @override
  State<homeTitle> createState() => _homeTitleState();
}
class _homeTitleState extends State<homeTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text("xxx"),
                    ),
                    Container(
                      child: Text("xxx"),
                    ),
                    Container(
                      child: Text("xxx"),
                    ),
                  ],
                ),
                Row(
              children: const [
                searchText(),
                moreIcons(),
              ],
            ),
              ],
            )
    );
  }
}