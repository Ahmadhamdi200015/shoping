
import 'package:get/get.dart';
import 'package:store/core/constant/route.dart';
import 'package:store/view/screen/home_page.dart';
import 'package:store/view/screen/onboarding.dart';
import 'package:store/view/screen/products_details_page.dart';
import 'package:store/view/screen/splash_page.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const OnBoardingPage()),
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),
  GetPage(name: AppRoute.splash, page: () => const SplashPage()),
  GetPage(name: AppRoute.productsDetailsPage, page: () => const ProductsDetailsPage()),






];
