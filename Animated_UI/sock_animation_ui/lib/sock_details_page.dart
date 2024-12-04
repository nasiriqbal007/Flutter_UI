import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:sock_animation_ui/widgets/pay_btn.dart';
import 'package:sock_animation_ui/widgets/sock_item.dart';

class SockDetailPage extends StatefulWidget {
  const SockDetailPage({super.key});

  @override
  State<SockDetailPage> createState() => _SockDetailPageState();
}

class _SockDetailPageState extends State<SockDetailPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(30),
              height: screenHeight / 2.9,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(254, 178, 190, 1),
                    Color.fromRGBO(252, 58, 92, 1),
                  ],
                ),
              ),
              child: Transform.translate(
                offset: const Offset(20, -35),
                child: FadeInDown(
                  child: Image.asset("assets/men-sock.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: FadeInLeft(
              duration: const Duration(microseconds: 1600),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: screenHeight / 1.4,
            child: FadeInUp(
              duration: const Duration(milliseconds: 1200),
              child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: const Text(
                          'Elite Socks',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 90, 90, .54),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: const Text(
                          "Men's Athletic Ankle Socks",
                          style: TextStyle(
                            color: Color.fromRGBO(97, 90, 90, 1),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: const Text(
                          "Crafted for the modern athlete, our elite performance ankle socks blend innovation and comfort. Made from a premium mix of breathable fibers and reinforced with advanced stitching, these socks offer exceptional support, moisture control, and a secure fit for every stride, whether on the track or during daily routines.",
                          style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 0.54),
                            height: 1.4,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      colorSelection(),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "More Option",
                        style: TextStyle(
                          color: Color.fromRGBO(97, 90, 90, .54),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: SizedBox(
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FadeInUp(
                                duration: const Duration(milliseconds: 1300),
                                child: const SockItem(
                                  imagePath: "assets/sock-icon.png",
                                  title: "Ankle Length Socks",
                                  price: "5656",
                                  color: Color.fromARGB(255, 234, 63, 63),
                                ),
                              ),
                              FadeInUp(
                                duration: const Duration(milliseconds: 1400),
                                child: const SockItem(
                                  imagePath: "assets/sock-icon.png",
                                  title: "Ankle Length Socks",
                                  price: "5656",
                                  margin: EdgeInsets.only(left: 20),
                                  color: Color.fromRGBO(32, 196, 214, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: const PayButton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget colorSelection() {
    return Row(
      children: [
        FadeInUp(
          duration: const Duration(milliseconds: 1200),
          child: Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.red),
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 1300),
          child: Container(
            width: 25,
            height: 25,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(197, 68, 197, 1),
            ),
          ),
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 1300),
          child: Container(
            width: 25,
            height: 25,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(242, 13, 143, 1),
            ),
          ),
        ),
      ],
    );
  }
}
