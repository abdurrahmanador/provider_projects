class Product {
  final String name;
  final double price; // Use double for price
  final String details;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    required this.details,
    required this.imageUrl,
  });
}

class ProductData {
  static List<Product> items = [
    Product(
      name: "Shoe",
      price: 1250.0, // Use double for price
      details: "It's a comfortable and stylish shoe.",
      imageUrl: "https://example.com/shoe.jpg",
    ),
    Product(
      name: "T-Shirt",
      price: 750.0,
      details: "A soft cotton t-shirt for casual wear.",
      imageUrl: "https://example.com/tshirt.jpg",
    ),
    Product(
      name: "Watch",
      price: 2500.0,
      details: "A sleek analog watch with a leather strap.",
      imageUrl: "https://example.com/watch.jpg",
    ),
    Product(
      name: "Laptop",
      price: 55000.0,
      details: "A high-performance laptop for all your needs.",
      imageUrl: "https://example.com/laptop.jpg",
    ),
    Product(
      name: "Headphones",
      price: 3000.0,
      details: "Noise-canceling headphones with superior sound quality.",
      imageUrl: "https://example.com/headphones.jpg",
    ),
    Product(
      name: "Backpack",
      price: 1500.0,
      details: "A durable backpack with multiple compartments.",
      imageUrl: "https://example.com/backpack.jpg",
    ),
    Product(
      name: "Smartphone",
      price: 45000.0,
      details: "A latest-generation smartphone with advanced features.",
      imageUrl: "https://example.com/smartphone.jpg",
    ),
    Product(
      name: "Sunglasses",
      price: 1200.0,
      details: "Stylish sunglasses with UV protection.",
      imageUrl: "https://example.com/sunglasses.jpg",
    ),
    Product(
      name: "Jeans",
      price: 1800.0,
      details: "Comfortable and durable denim jeans.",
      imageUrl: "https://example.com/jeans.jpg",
    ),
    Product(
      name: "Jacket",
      price: 3500.0,
      details: "A warm jacket suitable for cold weather.",
      imageUrl: "https://example.com/jacket.jpg",
    ),
    Product(
      name: "Tablet",
      price: 30000.0,
      details: "A lightweight tablet with a high-resolution screen.",
      imageUrl: "https://example.com/tablet.jpg",
    ),
    Product(
      name: "Sneakers",
      price: 2200.0,
      details: "Comfortable sneakers for daily wear.",
      imageUrl: "https://example.com/sneakers.jpg",
    ),
    Product(
      name: "Bluetooth Speaker",
      price: 2800.0,
      details: "Portable Bluetooth speaker with powerful sound.",
      imageUrl: "https://example.com/speaker.jpg",
    ),
    Product(
      name: "Fitness Band",
      price: 1500.0,
      details: "Track your daily activities with this fitness band.",
      imageUrl: "https://example.com/fitnessband.jpg",
    ),
    Product(
      name: "Camera",
      price: 35000.0,
      details: "A high-resolution digital camera for photography.",
      imageUrl: "https://example.com/camera.jpg",
    ),
    Product(
      name: "Keyboard",
      price: 1200.0,
      details: "A mechanical keyboard with backlit keys.",
      imageUrl: "https://example.com/keyboard.jpg",
    ),
    Product(
      name: "Gaming Console",
      price: 45000.0,
      details: "Next-gen gaming console with immersive graphics.",
      imageUrl: "https://example.com/console.jpg",
    ),
    Product(
      name: "Mouse",
      price: 800.0,
      details: "Wireless mouse with ergonomic design.",
      imageUrl: "https://example.com/mouse.jpg",
    ),
    Product(
      name: "Water Bottle",
      price: 600.0,
      details: "A stainless steel water bottle with insulation.",
      imageUrl: "https://example.com/waterbottle.jpg",
    ),
    Product(
      name: "Notebook",
      price: 250.0,
      details: "A ruled notebook for daily notes and sketches.",
      imageUrl: "https://example.com/notebook.jpg",
    ),
  ];
}
