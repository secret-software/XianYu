import 'package:flutter/material.dart';
class me extends StatefulWidget {
  const me({super.key});
  @override
  State<me> createState() => _meState();
}
class _meState extends State<me> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Column(
    //     children: [
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          child: Column(children: const [
            PersonalDetails(),
            Collect(),
          ]),
        ),
        const Divider(
          height: 0,
        ),
        Container(
          child: Column(
            children: const [
              Transaction(),
              HuiPlay(),
              HuDong(),
              Divider(
                thickness: 10,
                indent: 0,
                endIndent: 0,
                height: 0,
                color: Color.fromARGB(205, 205, 205, 205),
              ),
              GongYue(),
            ],
          ),
        ),
      ],
    );
    //     ],
    //   ),
    // );
  }
}
class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: const [
        ListTile(
          leading: YuanImage(),
          title: Text(
            "Rose",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            "****",
            style: TextStyle(fontSize: 12),
          ),
          trailing: Text(">"),
        ),
      ],
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
class Collect extends StatelessWidget {
  const Collect({super.key});
  List<Widget> _collectList() {
    List<Widget> list = [];
    for (var i = 0; i < 5; i++) {
      list.add(Container(
        child: Column(
          children: [Text("$i"), Text("aaa")]
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        children: _collectList(),
      ),
    );
  }
}
class Transaction extends StatelessWidget {
  const Transaction({super.key});
  List<Widget> _transactionList() {
    List<Widget> list = [];
    for (var i = 0; i < 4; i++) {
      list.add(Container(
        child: Column(
          children: [
            Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
              // ),
            ),
            Text("")
          ],
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 10, 4),
            alignment: Alignment.topLeft,
            child: Text("xxxxx"),
          ),
          Container(
            height: 70,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              children: _transactionList(),
            ),
          )
        ],
      ),
    );
  }
  }
class HuiPlay extends StatelessWidget {
  const HuiPlay({super.key});
  List<Widget> _transactionList() {
    List<Widget> list = [];
    for (var i = 0; i < 4; i++) {
      list.add(Container(
        child: Column(
          children: [
            Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            Text("xxxx")
          ],
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   border: new Border.all(color: Color(0xFFFF0000), width: 0.5)
      // ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 10, 4),
            alignment: Alignment.topLeft,
            child: Text("xxxxxxx"),
          ),
          Container(
            height: 70,
      //       decoration: BoxDecoration(
      //   border: new Border.all(color: Color(0xFFFF0000), width: 0.5)
      // ),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              crossAxisCount: 4,
              children: _transactionList(),
            ),
          )
        ],
      ),
    );
  }
  }
class HuDong extends StatelessWidget {
  const HuDong({super.key});
  List<Widget> _transactionList() {
    List<Widget> list = [];
    for (var i = 0; i < 3; i++) {
      list.add(Container(
        child: Column(
          children: [
            Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            Text("bbbbb")
          ],
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 10, 4),
            alignment: Alignment.topLeft,
            child: Text("aaaaa"),
          ),
          Container(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              children: _transactionList(),
            ),
          )
        ],
      ),
    );
  }
}
class GongYue extends StatelessWidget {
  const GongYue({super.key});
  List<Widget> _transactionList() {
    List<Widget> list = [];
    for (var i = 0; i < 9; i++) {
      list.add(Container(
        height: 50,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   border: new Border.all(color: Colors.black)
        // ),
        child: Column(
          children: [
            Container(
              child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            ),
            Container(
              child: Text("ccc"),
            )
          ],
        ),
      ));
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 0,
        childAspectRatio: 1.2,
        children: _transactionList(),
      ),
    );
  }
}
class meTitle extends StatefulWidget {
  const meTitle({super.key});
  @override
  State<meTitle> createState() => _meTitleState();
}
class _meTitleState extends State<meTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Rose",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20
        ),
        ),
    );
  }
}