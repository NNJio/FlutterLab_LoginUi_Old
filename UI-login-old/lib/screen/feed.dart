import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/screen/Widgets/banner_slider.dart';
import 'Widgets/bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Container(
        child: Column(children: [
          BannerSlider(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 4,
              children: <Widget>[
                Category(
                  title: "ช่างแอร",
                  svgSrc: "assets/images/air.svg",
                ),
                Category(
                  title: "ช่างซ่อมรถ",
                  svgSrc: "assets/images/air.svg",
                ),
                Category(
                  title: "ช่างไฟฟ้า",
                  svgSrc: "assets/images/air.svg",
                ),
                Category(
                  title: "ช่างประปา",
                  svgSrc: "assets/images/air.svg",
                ),
                Category(
                  title: "ช่างไอที",
                  svgSrc: "assets/images/air.svg",
                ),
                Category(
                  title: "เร็วๆนี้",
                  svgSrc: "assets/images/air.svg",
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String svgSrc;
  final String title;
  const Category({
    Key? key,
    required this.title,
    required this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 234, 234), 
          borderRadius: BorderRadius.circular(20),
          boxShadow: [BoxShadow(
            offset: Offset(0,17),
            blurRadius: 17,
            spreadRadius: -23,
            color: Colors.white
            )]
          ),
      child: Material(
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              Spacer(),
              SvgPicture.asset(svgSrc),
              Spacer(),
              Text(title)
            ]),
          ),
        ),
      ),
    );
  }
}
