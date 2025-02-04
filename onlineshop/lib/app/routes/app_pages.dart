import 'package:get/get.dart';
import 'package:pertemuan2/pages/cart/bindings/cart_binding.dart';
import 'package:pertemuan2/pages/cart/views/cart_view.dart';
import 'package:pertemuan2/pages/detail_product/bindings/detail_product_binding.dart';
import 'package:pertemuan2/pages/detail_product/views/detail_product_view.dart';
import 'package:pertemuan2/pages/home/bindings/home_binding.dart';
import 'package:pertemuan2/pages/home/views/home_view.dart';
import 'package:pertemuan2/pages/invoice/bindings/invoice_binding.dart';
import 'package:pertemuan2/pages/invoice/views/invoice_view.dart';
import 'package:pertemuan2/pages/login/bindings/login_binding.dart';
import 'package:pertemuan2/pages/login/views/login_view.dart';
import 'package:pertemuan2/pages/profile/binding/profile_binding.dart';
import 'package:pertemuan2/pages/profile/views/profile_view.dart';
import 'package:pertemuan2/pages/register/bindings/register_binding.dart';
import 'package:pertemuan2/pages/register/views/register_view.dart';
import 'package:pertemuan2/pages/splash/bindings/splash_binding.dart';
import 'package:pertemuan2/pages/splash/views/splash_view.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => const DetailProductView(),
      binding: DetailProductBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () =>  LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.INVOICE,
      page: () => const InvoiceView(),
      binding: InvoiceBinding(),
    ),
        GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
