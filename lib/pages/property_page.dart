
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:aquaproperties_app/utils/custom_colors.dart';
import 'package:aquaproperties_app/widgets/Services.dart';
import 'package:aquaproperties_app/models/property_model.dart';
import 'package:aquaproperties_app/pages/property_details.dart';

class PropertyPage extends StatefulWidget {
  const PropertyPage({Key? key}) : super(key: key);

  @override
  _PropertyPageState createState() => _PropertyPageState();
}

class _PropertyPageState extends State<PropertyPage> {
  List<Property> _properties = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loading = true;

    Services.getProperties().then((properties) {
      setState(() {
        _properties = properties.cast<Property>();
        _loading = false;
      });
    });
  }

  final formatCurrency =
      NumberFormat.simpleCurrency(decimalDigits: 0, name: 'AED ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180.0,
            centerTitle: false,
            backgroundColor: CustomColors.primaryColor,
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(_loading ? 'Loading...' : 'Properties In Dubai',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
              background: Image.network(
                "https://aquaproperties.com/storage/banners/December2021/QaoxOt3eV6NxYb4JTLuE.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                Property property = _properties[index];

                return Card(
                  color: (index % 2 == 0)
                      ? Colors.white
                      : CustomColors.primaryLightGrayColor,
                  margin: const EdgeInsets.all(0),
                  child: InkWell(
                    // ignore: avoid_print
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PropertyDetails(property: property),
                        ),
                      );
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Image(
                                  image: NetworkImage(
                                    property.imagesPath!.split("|")[0],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      property.title!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: CustomColors.primaryDarkColor,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      'FOR ${property.propertyFor!.toUpperCase()}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: CustomColors.primaryDarkColor,
                                      ),
                                    ),
                                    Text(
                                      'IN ${property.locAreaName!.replaceAll('-', ' ').toUpperCase()}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: CustomColors.primaryDarkColor,
                                      ),
                                    ),
                                    const SizedBox(height: .0),
                                    Text(
                                      formatCurrency.format(property.price!),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: CustomColors.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
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
                                            color:
                                                CustomColors.primaryDarkColor,
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
                                            color:
                                                CustomColors.primaryDarkColor,
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
                                            color:
                                                CustomColors.primaryDarkColor,
                                          ),
                                        ),
                                        const SizedBox(width: 4.0),
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
              },
              childCount: _properties.length,
            ),
          ),
        ],
      ),
    );
  }
}
