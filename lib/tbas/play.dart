import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
class play extends StatefulWidget {
  const play({super.key});
  @override
  State<play> createState() => _playState();
}
class _playState extends State<play> {
  @override
  Widget build(BuildContext context) {
    return DaohangNeirong();
  }
}
class DaohangNeirong extends StatelessWidget {
  const DaohangNeirong({super.key});
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        ListView(children: <Widget>[TuiJianNeiRong()]),
        ListView(children: <Widget>[FaXian()])
      ],
    );
  }
}
class TuiJianNeiRong extends StatelessWidget {
  const TuiJianNeiRong({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Newstuijian(),
          classify(),
          Divider(
            thickness: 10,
            indent: 0,
            endIndent: 0,
            height: 0,
            color: Color.fromARGB(205, 205, 205, 205),
          ),
          Shopping(),
        ],
      ),
    );
  }
}
class playTitle extends StatefulWidget {
  const playTitle({super.key});
  @override
  State<playTitle> createState() => _playTitleState();
}
class _playTitleState extends State<playTitle> {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      // 
      indicatorSize: TabBarIndicatorSize.label,
      // 
      tabs: <Widget>[
        Tab(
          child: Text(
            "play",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Tab(
          child: Text(
            "play",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
class cainixihuan extends StatelessWidget {
  const cainixihuan({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      "play",
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
        margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
        alignment: Alignment.center,
        child: cainixihuan(),
      ));
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      child: ListView(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        scrollDirection: Axis.horizontal, //
        children: _initGridViewData(),
      ),
    );
  }
}
class Newstuijian extends StatelessWidget {
  const Newstuijian({super.key});
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 6; i++) {
      tempList.add(
        Container(
          width: 152,
          // height: 130,
          // decoration: BoxDecoration(
          //     border: new Border.all(
          //   color: Colors.black,
          // )),
          child: ruijianren(),
        ),
      );
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 82,
      margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
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
      width: 200,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            // width: 200,
            // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                // color: Color.fromARGB(220, 205, 205, 205),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                    fit: BoxFit.cover,
                    height: 40,
                    width: 40,
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 5),
                        alignment: Alignment.topLeft,
                        child: Text("Larose"),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "play",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
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
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: _initGridViewData(),
      ),
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
                    child: ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      horizontalTitleGap: 0,
                      minVerticalPadding: 0,
                      leading: YuanImage(),
                      title: Text(
                        "xxxxx",
                        overflow: TextOverflow.clip,
                      ),
                      trailing: Container(
                          height: 20,
                          width: 35,
                          alignment: Alignment.centerRight,
                          child: Row(
                            children: [
                              Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                                width: 20,
                                height: 20,
                              ),
                              Text(
                                "12",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          )),
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
      child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
        width: 20,
        height: 20,
        fit: BoxFit.cover,
      ),
    );
  }
}
class FaXian extends StatelessWidget {
  const FaXian({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SwiperPage(),
          LaiBaShaonian(),
          DongTaiDiscussionGroup(),
          LaiBaShaonian(),
          DongTaiDiscussionGroup(),
          LaiBaShaonian(),
          DongTaiDiscussionGroup(),
          DongTaiDiscussionGroup()
        ],
      ),
    );
  }
}
class SwiperPage extends StatefulWidget {
  SwiperPage({Key? key}) : super(key: key);
  @override
  _SwiperPageState createState() => _SwiperPageState();
}
class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": "https://p5.ssl.qhimgs1.com/sdr/400__/t0192c47adb5e74edef.jpg"},
    {"url": "https://p3.ssl.qhimgs1.com/sdr/400__/t01bfa41f5d635b01cd.png"},
    {"url": "https://p5.ssl.qhimgs1.com/sdr/400__/t01fd328500f6cfeb55.jpg"},
    {"url": "https://p0.ssl.qhimgs1.com/sdr/400__/t01f60dde5a65bd5530.jpg"}
  ];
  // List<String> imgList = ["images/44.jpg","images/55.jpg","images/66.png"];
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(19)),
      height: 100,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(20)),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              imgList[index]['url'],
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: imgList.length,
        //
        // control: SwiperControl(),
        //
        pagination: SwiperPagination(),
      ),
    );
  }
}
class LaiBaShaonian extends StatelessWidget {
  const LaiBaShaonian({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Text(
                      "play",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    width: 120,
                    alignment: Alignment.centerRight,
                    child: Text(
                      ">",
                      style:
                          TextStyle(color: Color.fromARGB(205, 205, 205, 205)),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
class DongTaiDiscussionGroup extends StatelessWidget {
  const DongTaiDiscussionGroup({super.key});
  List<Widget> _DongtaiList(){
    List<Widget> list=[];
    for(var i=0;i<3;i++)
      list.add(
        DiscussionGroup()
      );
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: _DongtaiList(),
        ),
    );
  }
}
class DiscussionGroup extends StatelessWidget {
  const DiscussionGroup({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        children: [
          Container(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(5)),
              clipBehavior: Clip.antiAlias,
              child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              width: 215,
              child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(
                "play",
                // style: TextStyle(fontSize: 16),
              ),
              ),
              Container(
                width: double.infinity,
                child: Text(
                "33042077",
                style: TextStyle(color: Color.fromARGB(205, 205, 205, 205)),
              ),
              ),
            ],
          )),
          Container(
            width: 60,
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 205, 205, 205),
                borderRadius: BorderRadius.circular(15)),
            child: Text("+关注"),
          )
        ],
      ),
    );
  }
}