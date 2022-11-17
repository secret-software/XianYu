import 'package:fish/tbas/me.dart';
import 'package:flutter/material.dart';

class news extends StatefulWidget {
  const news({super.key});
  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // child: ListView(
      shrinkWrap: true,
      children: [
        Container(
          child: hudongxingxi(),
        ),
        Container(
          child: NewsManage(),
        ),
        Container(
          child: Newstuijian(),
        )
      ],
      // ),
    );
  }
}

class NewsManage extends StatelessWidget {
  const NewsManage({super.key});
  List<Widget> _initListData() {
    List<Widget> list = [];
    for (var i = 0; i < 7; i++) {
      list.add(Container(
        color: Colors.white,
        child: ListTile(
          leading: YuanImage(),
          title: Text("aaaa"),
          subtitle: Text("[$i闲鱼通知"),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: _initListData(),
    );
  }
}

class hudongxingxi extends StatelessWidget {
  const hudongxingxi({super.key});
  List<Widget> _initListData() {
    List<Widget> list = [];
    for (var i = 0; i < 2; i++) {
      list.add(
          // Container(
          //   color: Colors.white,
          //   child:
          ListTile(
        leading: YuanImage(),
        title: Text("news"),
        subtitle: Text("news"),
      ));
      list.add(Divider());
      // );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: _initListData(),
        ));
  }
}

class Newstuijian extends StatelessWidget {
  const Newstuijian({super.key});
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 6; i++) {
      tempList.add(
        Container(
          width: 120,
          child: ruijianren(),
        ),
      );
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          // color: Color.fromARGB(205, 205, 205, 205),
          borderRadius: BorderRadius.circular(19)),
      child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.horizontal, //
          children: _initGridViewData()),
    );
  }
}

class ruijianren extends StatelessWidget {
  const ruijianren({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
            decoration: BoxDecoration(
                color: Color.fromARGB(90, 205, 205, 205),
                borderRadius: BorderRadius.circular(19)),
            child: Column(
              children: [
                Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
                Text("newsLarose"),
                Text("news"),
                Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 205, 205, 205),
                      borderRadius: BorderRadius.circular(15)),
                  child: Text("news"),
                )
              ],
            ),
          )
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
      child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
        width: 55,
        height: 55,
        fit: BoxFit.cover,
      ),
    );
  }
}

class newsTitle extends StatefulWidget {
  const newsTitle({super.key});
  @override
  State<newsTitle> createState() => _newsTitleState();
}

class _newsTitleState extends State<newsTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  "news",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
                Container(
                    width: 90,
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(71, 205, 205, 205),
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                          height: 15,
                        ),
                        Text(
                          "news",
                          style: TextStyle(
                              color: Color.fromARGB(255, 205, 205, 205),
                              fontSize: 12),
                        ),
                      ],
                    )),
                Container(
                  width: 180,
                  alignment: Alignment.centerRight,
                  child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                    width: 25,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
