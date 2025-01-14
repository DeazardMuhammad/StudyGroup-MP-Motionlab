import 'package:get/get.dart';
import '../../home/views/home_view.dart';

class PaymentController extends GetxController {
  final invoiceNumber = '000085752257';
  final transactionDate = '16 June 2023';
  final paymentMethod = 'Bank Transfer';
  final orderName = 'Indra Mahesa';
  final orderEmail = 'indramahesa@gmail.com';
  final totalPrice = '\$66.00';

  void navigateToHome() {
    Get.to(() => const HomeScreen());
  }
}
