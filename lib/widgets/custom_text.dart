import 'package:flutter/cupertino.dart';

class CTitleText extends StatelessWidget {
  String title;
  Color color;
  double size;
  FontWeight fontWeight;

  CTitleText({
    Key? key,
    required this.title,
    required this.color,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: size),
    );
  }
}
