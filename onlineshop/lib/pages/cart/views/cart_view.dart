import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import '../../payment/views/payment_view.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.put(CartController());
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.black),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text(
            "My Cart",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Product 1
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 0,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: Image.asset(
                    "assets/images/product_0.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: const Text(
                    "Mi Band 8 Pro - Brand New",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: const Text("\$54.00"),
                  trailing: SizedBox(
                    width: 120,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () => cartController.quantityIncrement("product_0"),
                              icon: const Icon(Icons.add),
                              color: Colors.green,
                              iconSize: 20,
                            ),
                            Text(
                              "${cartController.getQuantity("product_0")}",
                              style: TextStyle(color: Colors.green),
                            ),
                            IconButton(
                              onPressed: () => cartController.quantityDecrement("product_0"),
                              icon: const Icon(Icons.remove),
                              color: Colors.green,
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Product 2
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 0,
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  leading: Image.asset(
                    "assets/images/product_1.png",
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: const Text(
                    "Lycra Men’s shirt",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  subtitle: const Text("\$12.00"),
                  trailing: SizedBox(
                    width: 120,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () => cartController.quantityIncrement("product_1"),
                              icon: const Icon(Icons.add),
                              color: Colors.green,
                              iconSize: 20,
                            ),
                            Text(
                              "${cartController.getQuantity("product_1")}",
                              style: TextStyle(color: Colors.green),
                            ),
                            IconButton(
                              onPressed: () => cartController.quantityDecrement("product_1"),
                              icon: const Icon(Icons.remove),
                              color: Colors.green,
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: cartController.navigateToPayment,
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
