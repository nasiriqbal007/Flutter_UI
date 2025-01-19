import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:social_app/models/image_model.dart';
import 'package:social_app/widgets/profile_summary.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double headerHeight = screenHeight * 0.25;
    double avatarRadius = screenWidth * 0.1;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: headerHeight,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/cover_pic.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: headerHeight * 0.78,
                    left: screenWidth * 0.1,
                    right: screenWidth * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: avatarRadius,
                          backgroundImage: const AssetImage(
                            "assets/profile.jpg",
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Text(
                          "Olivia Anderson",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: screenWidth * 0.045),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.01,
                              horizontal: screenWidth * 0.1),
                          child: const Text(
                            "Just a curious soul, chasing dreams, goals and good vibes",
                            style: TextStyle(
                              color: Color(0xFFCCCDCC),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: headerHeight * 1.7,
                    left: 5,
                    right: 5,
                    child: userStatics(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.325,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                padding: const EdgeInsets.only(top: 10),
                labelPadding: const EdgeInsets.only(
                  bottom: 8,
                  top: 0,
                ),
                dividerColor: Colors.transparent,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Icon(
                    _tabController.index == 0
                        ? EvaIcons.grid
                        : EvaIcons.grid_outline,
                  ),
                  Icon(
                    _tabController.index == 1
                        ? Icons.explore
                        : Icons.explore_outlined,
                  ),
                  Icon(
                    _tabController.index == 2
                        ? EvaIcons.heart
                        : EvaIcons.heart_outline,
                  ),
                  Icon(
                    _tabController.index == 3
                        ? EvaIcons.person
                        : EvaIcons.person_outline,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8),
                      child: MasonryGridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: imageList.length,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        gridDelegate:
                            const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          final ImageItem image = imageList[index];
                          return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child:
                                  CachedNetworkImage(imageUrl: image.imageurl));
                        },
                      ),
                    ),
                    Container(
                        color: Colors.green,
                        child: const Center(child: Text("Tab 2 Content"))),
                    Container(
                        color: Colors.deepPurple,
                        child: const Center(child: Text("Tab 3 Content"))),
                    Container(
                        color: Colors.teal,
                        child: const Center(child: Text("Tab 4 Content"))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column userStatics() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileSummary(
                count: '51 K',
                text: 'Followers',
                buttonText: 'Follow',
              ),
              VerticalDivider(
                color: Color(0xFFCCCDCC),
                thickness: 2,
                indent: 2,
                endIndent: 80,
              ),
              ProfileSummary(
                text: "Followings",
                count: "1203",
                buttonText: 'Message',
              ),
              VerticalDivider(
                color: Color(0xFFCCCDCC),
                thickness: 2,
                indent: 2,
                endIndent: 80,
              ),
              ProfileSummary(
                count: "500",
                text: "Posts",
                buttonText: 'Insight',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
