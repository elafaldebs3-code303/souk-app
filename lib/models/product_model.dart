class Product {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  Product({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

class Category {
  final String label;
  final dynamic icon;
  Category({required this.label, required this.icon});
}
