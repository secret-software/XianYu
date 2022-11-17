import 'package:flutter/material.dart';
class plus extends StatefulWidget {
  const plus({super.key});
  @override
  State<plus> createState() => _plusState();
}
class _plusState extends State<plus> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
      child: 
        ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            NewsManage()
            ],
        )
    );
  }
}
class NewsManage extends StatelessWidget {
  const NewsManage({super.key});
List<Widget> _initListData(){
  List<Widget> list=[];
  for(var i = 0;i<4;i++){
    list.add(
      Container(
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(19)),
        child: ListTile(
      leading: YuanImage(),
      title: Text("plus"),
      subtitle: Text("plus",style: TextStyle(color: Color.fromARGB(205, 205, 205, 205)),),
      trailing: Text(">",style: TextStyle(fontSize: 20),)),
    ),
      );
  }
  return list;
}
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics:NeverScrollableScrollPhysics(),
      children: _initListData(),
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
class plusTitle extends StatefulWidget {
  const plusTitle({super.key});
  @override
  State<plusTitle> createState() => _plusTitleState();
}
class _plusTitleState extends State<plusTitle> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}