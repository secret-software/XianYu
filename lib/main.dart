import 'package:flutter/material.dart';
import 'package:fish/tabs.dart';

void main() {
  runApp(MaterialApp(home: Taps()));

  // class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      alignment: Alignment.center,
      child: const Text(
        "asdfasdasdasdasdasdghjkl;'",
        style: TextStyle(
          color: Colors.red,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class searchButton extends StatelessWidget {
  const searchButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 38,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          // boxShadow: [BoxShadow(color: Colors.black, blurRadius: 1)],
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(255, 209, 2, .9)),
      child: const Text(
        "aaa",
        style: TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}

//
class searchText extends StatelessWidget {
  const searchText({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(19),
            border: Border.all(
                color: const Color.fromRGBO(255, 209, 2, .9), width: 2)),
        width: 265,
        height: 38,
        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: TextField(
          cursorColor: Color.fromARGB(255, 102, 102, 102),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(19)),
                borderSide: BorderSide(
                    color: Colors.red, width: 3.0, style: BorderStyle.solid)),
            suffixIcon: searchButton(),
            prefixIcon: ScanIcon(),
          ),
        ));
  }
}

//
class ScanIcon extends StatelessWidget {
  const ScanIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png"),
    );
  }
}

class moreIcons extends StatelessWidget {
  const moreIcons({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      child: Image.network("https://p5.ssl.qhimgs1.com/sdr/400__/t01250a3b6be92f103f.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
