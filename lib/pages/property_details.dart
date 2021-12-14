import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:aquaproperties_app/models/property_model.dart';
import 'package:aquaproperties_app/utils/custom_colors.dart';

final formatCurrency =
    NumberFormat.simpleCurrency(decimalDigits: 0, name: 'AED ');

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({Key? key, required this.property}) : super(key: key);

  final Property property;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(property.title!),
            expandedHeight: 250.0,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                property.imagesPath!.split('|')[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FOR ${property.propertyFor!.toUpperCase()}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: CustomColors.primaryDarkColor,
                    ),
                  ),
                  Text(
                    property.title!,
                    style: const TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'IN ${property.locAreaName!.replaceAll('-', ' ').toUpperCase()}',
                    style: const TextStyle(
                      fontSize: 14,
                      color: CustomColors.primaryDarkColor,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    formatCurrency.format(property.price!),
                    style: const TextStyle(
                      fontSize: 24,
                      color: CustomColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.bed_outlined,
                        size: 14.0,
                        color: CustomColors.primaryDarkColor,
                      ),
                      Text(
                        property.beds ?? '',
                        style: const TextStyle(
                          fontSize: 12,
                          color: CustomColors.primaryDarkColor,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      const Icon(
                        Icons.bathroom_rounded,
                        size: 14.0,
                        color: CustomColors.primaryDarkColor,
                      ),
                      Text(
                        property.baths ?? '',
                        style: const TextStyle(
                          fontSize: 12,
                          color: CustomColors.primaryDarkColor,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      const Icon(
                        Icons.garage_outlined,
                        size: 14.0,
                        color: CustomColors.primaryDarkColor,
                      ),
                      Text(
                        '${property.parking ?? ''}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: CustomColors.primaryDarkColor,
                        ),
                      ),
                      const SizedBox(width: 4.0),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    property.description ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      color: CustomColors.primaryDarkColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
