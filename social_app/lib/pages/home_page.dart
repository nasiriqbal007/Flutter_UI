import 'package:flutter/material.dart';
import 'package:social_app/models/post_model.dart';
import 'package:social_app/widgets/horizontal_story_card.dart';
import 'package:social_app/widgets/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.04),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.grid_view, color: Colors.black),
            ),
            const Text(
              "Social App",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(0.04),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.notifications, color: Colors.black),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HorizontalStoryCard(),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final PostModel post = posts[index];
                return PostCard(post: post);
              },
            ),
          ],
        ),
      ),
    );
  }
}
