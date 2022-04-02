import 'package:auto_route/auto_route.dart';
import 'package:ddd_sample/presentation/routes/app_router.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/styles/color.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
      debugShowCheckedModeBanner: kDebugMode,
      builder: (context, child) => Theme(
        data: ThemeData(
          primaryColor: AppColor(context).mainPrimary,
        ),
        child: child!,
      ),
    );
  }
}
