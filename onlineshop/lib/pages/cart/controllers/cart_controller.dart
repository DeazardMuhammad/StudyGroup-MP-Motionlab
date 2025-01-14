import 'package:get/get.dart';
import '../../payment/views/payment_view.dart';

class CartController extends GetxController {
  final cartItems = <String, RxInt>{}.obs;

  void quantityIncrement(String productId) {
    if (cartItems.containsKey(productId)) {
      cartItems[productId]!.value++;
    } else {
      cartItems[productId] = 1.obs;
    }
  }

  void quantityDecrement(String productId) {
    if (cartItems.containsKey(productId) && cartItems[productId]!.value > 0) {
      cartItems[productId]!.value--;
    }
  }

  int getQuantity(String productId) {
    return cartItems[productId]?.value ?? 0;
  }

  void navigateToPayment() {
    Get.to(() => const PaymentPage());
  }
}
