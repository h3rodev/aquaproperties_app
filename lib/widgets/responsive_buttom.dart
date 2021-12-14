// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButtom extends StatelessWidget {
  bool? isResponsive;
  double? width = 80.0;
  String text;
  Color color;
  IconData icon;
  String url;

  ResponsiveButtom({
    Key? key,
    this.isResponsive,
    this.width,
    required this.text,
    required this.color,
    required this.icon,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.pushNamed(context, url);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        width: width,
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
