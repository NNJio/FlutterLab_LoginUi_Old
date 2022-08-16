import 'package:flutter/material.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      height: 50,
      color: Color.fromARGB(255, 197, 197, 197),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Bottom(
              title: "หน้าแรก",
              press: () {},
            ),
            Bottom(
              title: "ค้นหาช่าง",
              press: () {},
            ),
            Bottom(
              title: "ช่างมาบอก",
              press: () {},
            ),
            Bottom(
              title: "สินค้าและบริการ",
              press: () {},
            ),
            Bottom(
              title: "ฉัน",
              press: () {},
            ),
          ]),
    );
  }
}

//!แยกออกมาจาก Scaffold
class Bottom extends StatelessWidget {
  final String title;
  final press;
  const Bottom({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          Text(title),
        ],
      ),
    );
  }
}
