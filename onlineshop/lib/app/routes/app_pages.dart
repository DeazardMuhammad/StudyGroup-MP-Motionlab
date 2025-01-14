import 'package:get/get.dart';

//home
import '../../pages/home/bindings/home_binding.dart';
import '../../pages/home/views/home_view.dart';
//cart 
import '../../pages/cart/views/cart_view.dart';
import '../../pages/cart/bindings/cart_binding.dart';
//login
import '../../pages/login/views/login_view.dart';
import '../../pages/login/bindings/login_binding.dart';
//detail
import '../../pages/detail/views/detail_view.dart';
import '../../pages/detail/bindings/detail_binding.dart';
//payment
import '../../pages/payment/views/payment_view.dart';
import '../../pages/payment/bindings/payment_binding.dart';
//register
import '../../pages/register/views/register_view.dart';
import '../../pages/register/bindings/register_binding.dart';


part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.LOGIN;

  static final pages = [
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.REGISTER,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.PAYMENT,
      page: () => const PaymentPage(),
      binding: PaymentBinding(),
    ),
  ];
}
