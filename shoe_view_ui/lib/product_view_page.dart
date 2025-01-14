import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoe_view/sneaker_model.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({super.key, required this.sneaker});
  final Sneaker sneaker;

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

const List<int> sizes = [38, 39, 40, 41, 42, 43];
int selectedSize = 0;

const List<Color> colors = [
  Colors.black,
  Colors.purple,
  Colors.orange,
  Colors.red,
  Colors.green,
  Colors.teal,
];
int selectedColor = 0;

class _ProductViewPageState extends State<ProductViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(context),
          buildProductDetails(),
        ],
      ),
    );
  }

  // Build SliverAppBar with flexible space for the image
  SliverAppBar buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.6,
      elevation: 0,
      snap: true,
      floating: true,
      stretch: true,
      backgroundColor: Colors.grey.shade50,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [StretchMode.zoomBackground],
        background: Hero(
          transitionOnUserGestures: true,
          tag: widget.sneaker.id,
          child: Image.network(
            widget.sneaker.imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: buildAppBarBottom(),
      ),
    );
  }

  // Bottom widget for SliverAppBar
  Widget buildAppBarBottom() {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Transform.translate(
        offset: const Offset(0, 1),
        child: Container(
          height: 45,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Center(
            child: Container(
              height: 8,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }

  // Main product details including description, color, and size selectors
  SliverList buildProductDetails() {
    return SliverList(
      delegate: SliverChildListDelegate([
        FadeInUp(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.85,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildProductHeader(),
                const SizedBox(height: 20),
                buildProductDescription(),
                const SizedBox(height: 20),
                buildColorSelector(),
                const SizedBox(height: 20),
                buildSizeSelector(),
                const SizedBox(height: 20),
                buildAddToCartButton(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  // Product name and price header
  Row buildProductHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInUp(
              from: 60,
              child: Text(
                widget.sneaker.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            FadeInUp(
              from: 70,
              delay: const Duration(milliseconds: 200),
              child: Text(
                widget.sneaker.collectionType,
                style: const TextStyle(
                    color: Colors.amber, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        FadeInUp(
          from: 80,
          child: Text(
            "\$${widget.sneaker.price.toStringAsFixed(0)}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
  }

  // Product description
  FadeInUp buildProductDescription() {
    return FadeInUp(
      delay: const Duration(milliseconds: 400),
      child: Text(
        widget.sneaker.description,
        style:
            TextStyle(height: 1.3, fontSize: 15, color: Colors.grey.shade800),
      ),
    );
  }

  // Color selection widget
  Widget buildColorSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInUp(
          child: Text(
            "Color",
            style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
        FadeInUp(
          child: SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedColor = index;
                    });
                  },
                  child: FadeInUp(
                    from: 60,
                    delay: Duration(milliseconds: (index * 100)),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 40,
                      width: 40,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedColor == index
                            ? colors[index]
                            : colors[index].withOpacity(0.5),
                      ),
                      child: Center(
                        child: Icon(
                          selectedColor == index ? Icons.check : null,
                          color: Colors.grey.shade100,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  // Size selection widget
  Widget buildSizeSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInUp(
          child: Text(
            "Size",
            style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sizes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSize = index;
                  });
                },
                child: FadeInUp(
                  from: 70,
                  delay: Duration(milliseconds: (index * 100)),
                  child: AnimatedContainer(
                    margin: const EdgeInsets.only(right: 10),
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSize == index
                              ? Colors.amber.shade700
                              : Colors.grey.shade300),
                      child: Center(
                        child: Text(
                          sizes[index].toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: selectedSize == index
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  // Add to cart button
  MaterialButton buildAddToCartButton() {
    return MaterialButton(
      onPressed: () {
        Navigator.pop(context);
      },
      height: 50,
      color: Colors.amber.shade700,
      splashColor: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: const Center(
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
