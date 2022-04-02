import 'package:auto_route/auto_route.dart';
import 'package:ddd_sample/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () => AutoRouter.of(context).replace(const HomeRoute()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
