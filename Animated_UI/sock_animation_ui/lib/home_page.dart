import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sock_animation_ui/widgets/category_btn.dart';
import 'package:sock_animation_ui/sock_details_page.dart';
import 'package:sock_animation_ui/widgets/promotion_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 1000),
              child: Container(
                width: double.infinity,
                height: 320,
                padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                  gradient: LinearGradient(begin: Alignment.topRight, colors: [
                    Color.fromRGBO(255, 250, 182, 1),
                    Color.fromRGBO(255, 239, 78, 1),
                  ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInDown(
                      duration: const Duration(milliseconds: 1000),
                      child: Image.asset(
                        'assets/menu.png',
                        width: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: FadeInDown(
                            duration: const Duration(milliseconds: 1200),
                            child: const Text(
                              "Best Winter Socks Colletion",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: FadeInDown(
                            duration: const Duration(milliseconds: 1300),
                            child: const Image(
                              image: AssetImage(
                                'assets/header-socks.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -30),
              child: FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                  height: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(08),
                    border: Border.all(
                        color: Colors.grey.shade400,
                        style: BorderStyle.solid,
                        width: 2),
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: "Search",
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const CategoryButton(
                          text: "Adult",
                          backgroundColor: Color.fromRGBO(251, 53, 105, 0.1),
                          textColor: Colors.red),
                      const CategoryButton(
                        animationDuration: 1300,
                        text: "Teens",
                        backgroundColor: Color.fromRGBO(97, 90, 90, 0.1),
                        textColor: Color.fromRGBO(97, 90, 90, 1),
                      ),
                      const CategoryButton(
                        animationDuration: 1400,
                        text: "Children",
                        backgroundColor: Color.fromRGBO(97, 90, 90, 0.1),
                        textColor: Color.fromRGBO(97, 90, 90, 1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const PromotionCard(),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 260,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          child: sockCard(
                            context,
                            const Color.fromRGBO(242, 168, 168, 1),
                            const Color.fromRGBO(220, 20, 60, 1),
                            const AssetImage('assets/sock-one.png'),
                          ),
                        ),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1600),
                          child: sockCard(
                            context,
                            const Color.fromRGBO(204, 153, 255, 1),
                            const Color.fromRGBO(128, 0, 128, 1),
                            const AssetImage("assets/sock-two.png"),
                          ),
                        ),
                        FadeInUp(
                          duration: const Duration(milliseconds: 1700),
                          child: sockCard(
                            context,
                            const Color.fromRGBO(173, 216, 230, 1),
                            const Color.fromRGBO(0, 191, 255, 1),
                            const AssetImage("assets/sock-two.png"),
                          ),
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
  }

  Widget sockCard(context, Color startColor, Color endColor, AssetImage image) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: const SockDetailPage(), type: PageTransitionType.fade));
      },
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Container(
          margin: const EdgeInsets.only(right: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                startColor,
                endColor,
              ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  offset: const Offset(5, 10),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: image,
            ),
          ),
        ),
      ),
    );
  }
}
