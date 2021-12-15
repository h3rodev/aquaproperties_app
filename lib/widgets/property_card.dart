import 'package:aquaproperties_app/models/property_model.dart';
import 'package:aquaproperties_app/pages/property_details.dart';

import 'package:aquaproperties_app/utils/custom_colors.dart';
import 'package:aquaproperties_app/widgets/custom_property_slider.dart';
import 'package:aquaproperties_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatCurrency =
    NumberFormat.simpleCurrency(decimalDigits: 0, name: 'AED ');

class PropertyCard extends StatelessWidget {
  const PropertyCard({Key? key, required this.property}) : super(key: key);

  final Property property;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PropertyDetails(property: property),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.primaryDarkColor.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      child: PropertySlider(
                        gallery: property.imagesPath!,
                        width: 60,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.primaryDarkColor.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 20,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CTitleText(
                          title: formatCurrency.format(property.price!),
                          size: 18.0,
                          color: CustomColors.primaryDarkColor,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(height: 8.0),
                        CTitleText(
                          title:
                              '${property.categoryName!} for ${property.propertyFor}'
                                  .toUpperCase(),
                          size: 12.0,
                          color: CustomColors.primaryDarkColor,
                          fontWeight: FontWeight.normal,
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            const Icon(
                              Icons.pin_drop,
                              color: CustomColors.primaryAssentColor,
                            ),
                            const SizedBox(width: 4.0),
                            Container(
                              width: MediaQuery.of(context).size.width - 130,
                              child: CTitleText(
                                title:
                                    '${property.subLocName != null && property.subLocName != property.locName && property.subLocName != property.locName ? '${property.subLocName}' : property.locName != null ? '${property.locName}' : ''} at ${property.locAreaName ?? ''}'
                                        .replaceAll('-', ' ')
                                        .toUpperCase(),
                                size: 12.0,
                                color: CustomColors.primaryDarkColor,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
