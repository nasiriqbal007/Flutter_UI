import 'package:flutter/material.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String description;
  final String time;
  final String hashtags;
  final int likes;
  final int comments;
  final int bookmarks;
  final Widget userPost;

  const PostTemplate(
      {super.key,
      required this.username,
      required this.description,
      required this.likes,
      required this.comments,
      required this.bookmarks,
      required this.userPost,
      required this.time,
      required this.hashtags});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        userPost,
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 20),
          child: Container(
              alignment: const Alignment(1, -1),
              child: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0),
          child: Container(
              alignment: AlignmentDirectional.topCenter,
              child: const Text(
                "Explore  Following  For You",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: const Alignment(-1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "@$username",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 4.0,
                            right: 4,
                          ),
                          child: Text(
                            ".",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: time,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  hashtags,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: const Alignment(1, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                const SizedBox(height: 20),
                const Icon(Icons.favorite, color: Colors.white, size: 40),
                Text(
                  likes.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Icon(Icons.comment, color: Colors.white, size: 40),
                Text(
                  comments.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Icon(Icons.bookmark, color: Colors.white, size: 40),
                Text(
                  bookmarks.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                const Icon(Icons.share, color: Colors.white, size: 40),
                const Text(
                  "Share",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: const Icon(Icons.music_note_sharp))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
