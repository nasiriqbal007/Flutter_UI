import 'package:flutter/material.dart';
import 'package:social_app/pages/home_page.dart';
import 'package:social_app/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const Explore(),
    const Favorites(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Theme(
                data: ThemeData(canvasColor: Colors.transparent),
                child: BottomNavigationBar(
                  onTap: (value) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  },
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  selectedFontSize: 0.0,
                  unselectedFontSize: 0.0,
                  currentIndex: _selectedIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(
                            top: 2, bottom: 2, left: 0, right: 0),
                        child: Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _selectedIndex == 0
                                ? Colors.white
                                : Colors.transparent,
                          ),
                          child: Icon(
                            _selectedIndex == 0
                                ? Icons.home
                                : Icons.home_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 1
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Icon(
                          _selectedIndex == 1
                              ? Icons.explore
                              : Icons.explore_outlined,
                          color: Colors.black,
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 2
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Icon(
                          _selectedIndex == 2
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.black,
                        ),
                      ),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Container(
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _selectedIndex == 3
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Icon(
                          _selectedIndex == 3
                              ? Icons.person
                              : Icons.person_outline,
                          color: Colors.black,
                        ),
                      ),
                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Favorites extends StatelessWidget {
  const Favorites({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.green, body: Center(child: Text("Explore")));
  }
}

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.green, body: Center(child: Text("Explore")));
  }
}
