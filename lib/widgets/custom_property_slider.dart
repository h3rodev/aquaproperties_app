import 'package:aquaproperties_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class PropertySlider extends StatelessWidget {
  String gallery;
  double width;

  PropertySlider({
    Key? key,
    required this.gallery,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final galUrl = gallery.split("|");
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: galUrl.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Container(
              color: CustomColors.primaryColor,
              width: MediaQuery.of(context).size.width - width,
              height: MediaQuery.of(context).size.height/2,
              child: Image.network(
                galUrl[index],
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/aqua-emblem.png',
                    fit: BoxFit.contain,
                  );
                },
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ],
        );
      },
    );
  }
}
