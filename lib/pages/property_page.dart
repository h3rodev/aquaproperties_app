import 'package:aquaproperties_app/widgets/custom_text.dart';
import 'package:aquaproperties_app/widgets/property_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:aquaproperties_app/utils/custom_colors.dart';
import 'package:aquaproperties_app/services/Services.dart';
import 'package:aquaproperties_app/models/property_model.dart';



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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: false,
            backgroundColor: Colors.white,
            elevation: 0.0,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: CustomColors.primaryDarkColor,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CTitleText(
                    title: 'Find Your',
                    size: 30.0,
                    color: CustomColors.primaryDarkColor,
                    fontWeight: FontWeight.normal,
                  ),
                  CTitleText(
                    title: 'Dream Property',
                    size: 30.0,
                    color: CustomColors.primaryDarkColor,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 32.0),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Container(
                          decoration: BoxDecoration(
                            color: CustomColors.primaryColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        fillColor: CustomColors.primaryLightGrayColor,
                        filled: true,
                        contentPadding: const EdgeInsets.all(20.0),
                        hintStyle: const TextStyle(
                          fontSize: 16.0,
                          color: CustomColors.primaryAssentColor,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Search your property'),
                  ),
                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                Property property = _properties[index];
                return PropertyCard(property: property);
              },
              childCount: _properties.length,
            ),
          ),
        ],
      ),
    );
  }
}
