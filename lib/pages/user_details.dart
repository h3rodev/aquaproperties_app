import 'package:flutter/material.dart';

import 'package:aquaproperties_app/models/user_model.dart';
import 'package:aquaproperties_app/utils/custom_colors.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: CustomColors.primaryColor,
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(user.profilePicture!),
                    radius: 50.0,
                    onBackgroundImageError: (exception, stackTrace) {
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage(
                          'assets/aqua-emblem.png',
                        ),
                      );
                      exception;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    user.privateName,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    user.jobTitle != null ? user.jobTitle!.toUpperCase() : '',
                    style: const TextStyle(
                      fontSize: 12,
                      color: CustomColors.primaryLightGrayColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "SPEAKS",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.primaryDarkColor,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Column(
                          children: List.generate(
                            user.language!.split(",").length,
                            (i) {
                              return Text(user.language!.split(",")[i]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "AREA SPECIALITIES",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.primaryDarkColor,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Column(
                          children: List.generate(
                            user.areas!.split(",").length,
                            (i) {
                              return Text(user.areas!.split(",")[i]);
                            },
                          ),
                        ),
                      ],
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
