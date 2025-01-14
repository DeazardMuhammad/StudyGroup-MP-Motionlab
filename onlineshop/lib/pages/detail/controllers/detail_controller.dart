import 'package:get/get.dart';
import '../../cart/views/cart_view.dart';

class DetailController extends GetxController {
  void navigateToCart() {
    Get.to(() => const CartPage());
  }
}
