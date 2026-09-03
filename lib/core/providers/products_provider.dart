import 'package:flutter/foundation.dart';
import 'package:paw_print/core/utils/data.dart';
import 'package:paw_print/core/models/product_model.dart';

class ProductsProvider extends ChangeNotifier {
  List<ProductModel> allProducts = Data.products;

  List<ProductModel> _searchResults = Data.products;

  List<ProductModel> cart = [];

  List<ProductModel> get favorites =>
      allProducts.where((product) => product.isFavorite).toList();

  List<ProductModel> get searchResults => _searchResults;
  void updateSearchResults(String query) {
    _searchResults = allProducts
        .where(
          (product) => product.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    notifyListeners();
  }

  void clearSearchResults() {
    _searchResults.clear();
    _searchResults = allProducts
        .where((product) => product.name.toLowerCase().contains(''))
        .toList();
    notifyListeners();
  }

  void addToCart(ProductModel product) {
    cart.add(product);
    notifyListeners();
  }

  void removeFromCart(ProductModel product) {
    cart.remove(product);
    notifyListeners();
  }

  void toggleFavorite(String productId) {
    final productIndex = allProducts.indexWhere(
      (product) => product.id == productId,
    );
    if (productIndex != -1) {
      final product = allProducts[productIndex];
      allProducts[productIndex] = ProductModel(
        id: product.id,
        name: product.name,
        category: product.category,
        description: product.description,
        price: product.price,
        imageUrl: product.imageUrl,
        discount: product.discount,
        isFavorite: !product.isFavorite, // Toggle the favorite status
        tags: product.tags,
      );
      _searchResults = allProducts
          .where((product) => product.name.toLowerCase().contains(''))
          .toList();
      notifyListeners();
    }
  }
}
