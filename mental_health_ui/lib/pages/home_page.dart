import 'package:flutter/material.dart';
import 'package:mental_health_ui/components/emotion.dart';
import 'package:mental_health_ui/components/excercise_card.dart';
import 'package:mental_health_ui/model/excercise_model.dart';
import 'package:mental_health_ui/pages/category_page.dart';
import 'package:mental_health_ui/pages/chat_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeContent(),
    const CategoryPage(),
    const ChatListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: _pages[_currentIndex],
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Colors.white,
            indicatorColor: Colors.blue[900],
          ),
          child: Container(
            padding: EdgeInsets.zero,
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              selectedItemColor: Colors.blue[800],
              unselectedItemColor: const Color.fromARGB(255, 190, 207, 216),
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category_rounded),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Nasir Iqbal",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "22/10/2024",
                        style: TextStyle(color: Colors.blue[200]),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(12),
                child: const Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 28,
                  ),
                  SizedBox(width: 6),
                  Text("Search", style: TextStyle(fontSize: 14))
                ]),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 28,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Emotion(text: '😔'),
                      SizedBox(height: 8),
                      Text("Badly", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Column(
                    children: [
                      Emotion(text: '😊'),
                      SizedBox(height: 8),
                      Text("Fine", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Column(
                    children: [
                      Emotion(text: '😁'),
                      SizedBox(height: 8),
                      Text("Well", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  Column(
                    children: [
                      Emotion(text: '😃'),
                      SizedBox(height: 8),
                      Text("Excellent", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exercise",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Icon(
                        Icons.more_horiz,
                        size: 28,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: exercises.length,
                      itemBuilder: (context, index) {
                        final Exercise exercise = exercises[index];
                        return ExcerciseCard(
                          icon: exercise.icon,
                          title: exercise.title,
                          subtitle: exercise.subtitle,
                          color: exercise.color,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
