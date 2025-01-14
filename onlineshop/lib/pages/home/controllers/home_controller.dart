import 'package:get/get.dart';
import '../../cart/views/cart_view.dart';
import '../../detail/views/detail_view.dart';

class HomeController extends GetxController {
  void navigateToCart() {
    Get.to(() => const CartPage());
  }

  void navigateToDetail() {
    Get.to(() => const DetailScreen());
  }
}
