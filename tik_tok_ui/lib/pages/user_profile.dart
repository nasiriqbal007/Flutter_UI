import 'package:flutter/material.dart';
import 'package:tik_tok_ui/tabs/bookmark_tab.dart';
import 'package:tik_tok_ui/tabs/fav_tab.dart';
import 'package:tik_tok_ui/tabs/first_tab.dart';
import 'package:tik_tok_ui/tabs/lock_tab.dart';
import 'package:tik_tok_ui/tabs/sync_tab.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(
            Icons.person_add_alt_1_sharp,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4)),
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'NasirIqbal',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.black,
                size: 24,
              )
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile picture
              CircleAvatar(
                radius: 40,
              ),
              const SizedBox(height: 10),

              // Username
              const Text(
                '@nasiriqbal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 10),

              // Follower stats
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '150',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('Following', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        '2.3K',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('Followers', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        '5.4K',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text('Likes', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      "Share Profile",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.person_add_alt,
                        color: Colors.black,
                      )),
                ],
              ),
              const SizedBox(height: 10),

              const Text(
                'Treat people with kindness.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black, // Ensure the bio text is black
                ),
              ),
              const SizedBox(height: 10),
              TabBar(
                unselectedLabelColor: Colors.grey[500],
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: const [
                  Tab(icon: Icon(Icons.grid_view_outlined)),
                  Tab(icon: Icon(Icons.lock_outline)),
                  Tab(icon: Icon(Icons.sync)),
                  Tab(icon: Icon(Icons.bookmark_outline)),
                  Tab(icon: Icon(Icons.favorite_outline)),
                ],
                dividerColor: Colors.transparent,
              ),

              const Expanded(
                child: TabBarView(children: [
                  FirstTab(),
                  LockTab(),
                  SyncTab(),
                  BookmarkTab(),
                  FavTab(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
