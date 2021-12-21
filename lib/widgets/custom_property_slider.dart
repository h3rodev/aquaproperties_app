// ignore_for_file: must_be_immutable

import 'package:aquaproperties_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class PropertySlider extends StatelessWidget {
  String gallery;
  double width;

  PropertySlider({Key? key, required this.gallery, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final galUrl = gallery.split("|");
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: galUrl.length,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: CustomColors.primaryColor,
              width: MediaQuery.of(context).size.width - width,
              height: MediaQuery.of(context).size.height / 2,
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
            Container(
              margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
              alignment: Alignment.bottomCenter,
              child: Row(
                children: List.generate(
                  galUrl.length,
                  (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(left: 4.0),
                      height: index == indexDots ? 12 : 8,
                      width: index == indexDots ? 12 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
