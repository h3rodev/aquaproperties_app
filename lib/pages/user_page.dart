// ignore_for_file: avoid_print, unnecessary_this

import 'package:flutter/material.dart';
import 'package:aquaproperties_app/utils/custom_colors.dart';

import 'package:aquaproperties_app/services/Services.dart';
import 'package:aquaproperties_app/models/user_model.dart';
import 'package:aquaproperties_app/pages/user_details.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<User> _users = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loading = true;

    Services.getUsers().then((users) {
      setState(() {
        _users = users.cast<User>();
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
            title: Text(
              _loading ? 'Loading...' : 'Agent List',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: CustomColors.primaryColor,
              ),
            ),
            pinned: false,
            centerTitle: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.menu,
                color: CustomColors.primaryColor,
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                    color: CustomColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                User user = _users[index];
                return Card(
                  color: (index % 2 == 0)
                      ? Colors.white
                      : CustomColors.primaryLightGrayColor,
                  margin: const EdgeInsets.all(0),
                  child: InkWell(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetails(user: user),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(user.profilePictureUrl!),
                                  radius: 50.0,
                                  backgroundColor: CustomColors.primaryColor,
                                  onBackgroundImageError:
                                      (exception, stackTrace) {},
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      user.fullName!,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: CustomColors.primaryColor,
                                      ),
                                    ),
                                    Text(
                                      user.jobTitle ?? '',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: CustomColors.primaryDarkColor,
                                      ),
                                    ),
                                    const SizedBox(height: 16.0),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.phone_android_outlined,
                                          size: 14.0,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          user.publicPhone!,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color:
                                                CustomColors.primaryAssentColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.email_outlined,
                                          size: 14.0,
                                        ),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          user.publicEmail ?? '',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color:
                                                CustomColors.primaryAssentColor,
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
              },
              childCount: _users.length, // 1000 list items
            ),
          ),
        ],
      ),
    );
  }
}
