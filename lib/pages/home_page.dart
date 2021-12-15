import 'package:flutter/material.dart';

import 'package:aquaproperties_app/utils/custom_colors.dart';
import 'package:aquaproperties_app/widgets/custom_text.dart';
import 'package:aquaproperties_app/widgets/responsive_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List homeTitle = [
      'Properties For Sale',
      'Properties For Rent',
      'Off Plan Properties',
    ];
    final List homeSubTitle = [
      'Buy A Property In Dubai',
      'Rent A Property In Dubai',
      'Find The Right Community To Invest In Dubai',
    ];
    final List homeContent = [
      "Dubai is a vibrant, cosmopolitan city offering the world's tallest skyscrapers and most lavish villas. There is an array of leasehold and freehold properties to choose from while looking for properties for sale in Dubai.",
      "Renting a property in Dubai can be a tiring process if not done with an experienced leasing consultant.",
      "Despite some yesteryear economic challenges in UAE, land continues to be one among the foremost robust and resilient industries within the country. Dubai has been among the highest emirates that is still thriving with the important estate business, because it has proven to be adaptive to the some temporary while some perpetual changes in the market.",
    ];
    final List homeImages = [
      'assets/properties-for-sale.png',
      'assets/properties-for-rent.png',
      'assets/offplan-properties.png'
    ];
    final List homeLinks = [
      '/properties-for-sale',
      '/properties-for-rent',
      '/offplan',
    ];

    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(
                Icons.menu_rounded,
                color: CustomColors.primaryDarkColor,
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: controller,
        itemCount: homeTitle.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(homeImages[index]),
                fit: BoxFit.cover,
              ),
            ),
            padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 70.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CTitleText(
                        title: homeTitle[index],
                        size: 30.0,
                        color: CustomColors.primaryDarkColor,
                        fontWeight: FontWeight.bold,
                      ),
                      CTitleText(
                        title: homeSubTitle[index],
                        size: 24.0,
                        color: CustomColors.primaryDarkColor,
                        fontWeight: FontWeight.normal,
                      ),
                      const SizedBox(height: 16.0),
                      CTitleText(
                        title: homeContent[index],
                        size: 14.0,
                        color: CustomColors.primaryAssentColor,
                        fontWeight: FontWeight.normal,
                      ),
                      const SizedBox(height: 32.0),
                      ResponsiveButtom(
                        icon: Icons.double_arrow,
                        color: CustomColors.primaryColor,
                        isResponsive: false,
                        text: 'View Properties',
                        url: homeLinks[index],
                        width: 210.0,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: List.generate(homeTitle.length, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots
                            ? CustomColors.primaryColor
                            : CustomColors.primaryColor.withOpacity(0.5),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
