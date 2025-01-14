class Sneaker {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String imagePath;
  final double price;
  final String collectionType;

  Sneaker(
      {required this.id,
      required this.name,
      required this.tagline,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.collectionType});
}

List<Sneaker> sneakers = [
  Sneaker(
      name: "Adidas Yeezy Boost 350 V2",
      tagline: "Comfort and style combined.",
      description:
          "Set the trend with the perfect blend of comfort, innovation, and iconic design.",
      imagePath:
          "https://images.unsplash.com/photo-1617143207675-e7e6371f5f5d?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 220.0,
      collectionType: "New Arrivals",
      id: 1),
  Sneaker(
      name: "Tommy Hilfiger",
      tagline: "Timeless style and sophistication.",
      description: "Classic American style meets modern sophistication.",
      imagePath:
          "https://images.unsplash.com/photo-1654907118243-a0a62cefbf0a?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 150.0,
      collectionType: "Fresh Picks",
      id: 2),
  Sneaker(
      name: "Nike Air Force 1 Type 'N354'",
      tagline: "Innovation meets classic heritage.",
      description:
          "A fusion of modern innovation and timeless design, redefining comfort and performance.",
      imagePath:
          "https://images.unsplash.com/photo-1600269452121-4f2416e55c28?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 180.0,
      collectionType: "Hot Off the Press",
      id: 3),
  Sneaker(
      name: "Air Jordan 4 Retro",
      tagline: "Bold and vibrant design.",
      description:
          "A statement of boldness and unmatched style, designed for the true sneaker enthusiast.",
      imagePath:
          "https://images.unsplash.com/photo-1622760806364-5ccac8096b59?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      price: 200.0,
      collectionType: "Trending Now",
      id: 4),
];
