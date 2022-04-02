import 'package:ddd_sample/injection.dart';
import 'package:ddd_sample/presentation/app_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  // change to prod, dev
  await configureDependencies(
    (kDebugMode || kProfileMode) ? Environment.dev : Environment.prod,
  );

  runApp(const AppWidget());
}
