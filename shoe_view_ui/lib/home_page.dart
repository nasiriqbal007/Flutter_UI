import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoe_view/product_view_page.dart';
import 'package:shoe_view/sneaker_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          options: CarouselOptions(
              height: 450,
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: MediaQuery.of(context).size.width * 0.0017,
              enlargeCenterPage: true),
          items: sneakers.map((sneaker) {
            return Builder(builder: (context) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ProductViewPage(sneaker: sneaker);
                  }),
                ),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(0, 5),
                          blurRadius: 20,
                        ),
                      ]),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Hero(
                          transitionOnUserGestures: true,
                          tag: sneaker.id,
                          child: Container(
                              margin: const EdgeInsets.only(top: 10),
                              clipBehavior: Clip.hardEdge,
                              height: 320,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.network(
                                sneaker.imagePath,
                                fit: BoxFit.cover,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          sneaker.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          sneaker.tagline,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              );
            });
          }).toList(),
        ),
      ),
    );
  }
}
