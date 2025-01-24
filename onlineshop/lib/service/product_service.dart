
import 'package:pertemuan2/app/data/models/product_model_api.dart';
import 'package:pertemuan2/app/shared/constanta.dart';

class ProductService {
  Future<Product?> getProducts() async {
    try {
      final response = await dio.get('$url/products');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<ProductElement?> getDetailsProducts({required int id}) async {
    try {
      final response = await dio.get('$url/products/$id');
      if (response.statusCode == 200) {
        return ProductElement.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<String>?> getCategories() async {
    try {
      final response = await dio.get('$url/products/categories');
      if (response.statusCode == 200) {
        final data = response.data;
        if (data is List) {
          if (data.isNotEmpty && data.first is Map) {
            final listCat = data.map((obj) {
              final map = obj as Map<String, dynamic>;
              return map["slug"].toString();
            }).toList();
            return listCat.cast<String>();
          } else {
            final listCat = data.map((e) => e.toString()).toList();
            return listCat.cast<String>();
          }
        }
        return null;
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Product?> getProductsByCategory(String categoryName) async {
    try {
      final response = await dio.get('$url/products/category/$categoryName');
      if (response.statusCode == 200) {
        return Product.fromJson(response.data);
      }
      return null;
    } catch (e) {
      throw Exception(e);
    }
  }
}
