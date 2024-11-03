import 'package:flutter/material.dart';
import 'package:mental_health_ui/components/excercise_card.dart';
import 'package:mental_health_ui/model/consultant_model.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Column(
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
                        const SizedBox(
                          height: 8,
                        ),
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
                const SizedBox(
                  height: 30,
                ),
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
                    SizedBox(
                      width: 6,
                    ),
                    Text("Search", style: TextStyle(fontSize: 14))
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
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
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildCategoryContainer(
                                "Relationship", Colors.blue),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildCategoryContainer("Career", Colors.purple),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildCategoryContainer("Education", Colors.orange),
                            const SizedBox(
                              width: 10,
                            ),
                            _buildCategoryContainer("Others", Colors.redAccent),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Consultant",
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
                            itemCount: consultants.length,
                            itemBuilder: (context, index) {
                              final Consultant consultant = consultants[index];
                              return ExcerciseCard(
                                icon: consultant.icon,
                                title: consultant.title,
                                subtitle: consultant.subtitle,
                                color: consultant.color,
                              );
                            })),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

Widget _buildCategoryContainer(String title, Color color) {
  return Expanded(
    child: Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
