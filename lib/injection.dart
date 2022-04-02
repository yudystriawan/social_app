import 'package:core/injection.dart';
import 'package:ddd_sample/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies(String env) {
  configureCoreDependencies();
  return $initGetIt(getIt, environment: env);
}
