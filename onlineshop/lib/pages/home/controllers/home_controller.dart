import 'package:get/get.dart';
import 'package:pertemuan2/app/data/models/product_model_api.dart';
import 'package:pertemuan2/service/product_service.dart';

class HomeController extends GetxController {
  final productService = ProductService();
  var isLoading = false.obs;
  var isGridLoading = false.obs;
  var productsFromApi = <ProductElement>[].obs;
  var chipLabels = <String>[].obs;
  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
    fetchAllProducts();
  }

  Future<void> fetchCategories() async {
    try {
      isLoading.value = true; 
      final listCat = await productService.getCategories();
      if (listCat != null) {
        chipLabels.clear();
        chipLabels.add('All');
        chipLabels.addAll(listCat);
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false; 
    }
  }

  Future<void> fetchAllProducts({bool isInit = true}) async {
    try {
      if (isInit) {
        isLoading.value = true;
      } else {
        isGridLoading.value = true;
      }
      final product = await productService.getProducts();
      if (product != null) {
        productsFromApi.value = product.products ?? [];
      }
    } catch (e) {
      print(e);
    } finally {
      if (isInit) {
        isLoading.value = false;
      } else {
        isGridLoading.value = false;
      }
    }
  }
  Future<void> fetchByCategory(String categoryName) async {
    try {
      isGridLoading.value = true;

      final product = await productService.getProductsByCategory(categoryName);
      if (product != null) {
        productsFromApi.value = product.products ?? [];
      }
    } catch (e) {
      print(e);
    } finally {
      isGridLoading.value = false;
    }
  }
  void setSelectedIndex(int index) {
    selectedIndex.value = index;
    final category = chipLabels[index];
    if (category == 'All') {
      fetchAllProducts(isInit: false);
    } else {
      fetchByCategory(category);
    }
  }
}
