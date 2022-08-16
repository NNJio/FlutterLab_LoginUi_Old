import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final List<String> _imgList = [
    'assets/images/1.jpg',
    'assets/images/2.jpeg',
    'assets/images/3.jpg',
    'assets/images/4.jfif',
    'assets/images/5.jpg',
  ];

  late int _current;

  @override
  void initState() {
    _current = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBanner(),
        _buildIndicator(),
      ],
    );
  }

  Container _buildBanner() {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
            height: 200.0,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        items: _imgList
            .map((item) => Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ))
            .toList(),
      ),
    );
  }

  _buildIndicator() => Positioned(
        bottom: 15,
        left: 150,
        child: Row(
          children: _imgList.map(
            (url) {
              int index = _imgList.indexOf(url);
              return Container(
                width: 8,
                height: _current == index ? 8 : 1,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: _current == index ? BoxShape.circle: BoxShape.rectangle,
                  color: Colors.transparent
                ),
              );
            },
          ).toList(),
        ),
      );
}
