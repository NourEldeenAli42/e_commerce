class ProductModel {
  final String id;
  final String name;
  final String category;
  final String description;
  final double price;
  final String imageUrl;
  final double? discount;
  final bool isFavorite;
  final List<String> tags;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.discount,
    this.isFavorite = false,
    this.tags = const [],
  });
}
