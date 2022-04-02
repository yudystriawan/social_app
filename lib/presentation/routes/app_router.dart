import 'package:auto_route/auto_route.dart';
import 'package:ddd_sample/presentation/pages/home/home_page.dart';
import 'package:ddd_sample/presentation/pages/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage,),
    AutoRoute(page: HomePage, initial: true),
  ],
)
class $AppRouter {}
