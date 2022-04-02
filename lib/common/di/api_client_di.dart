import 'package:core/api/api_client.dart';
import 'package:core/flavor/flavor_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiClientDi {
  @lazySingleton
  ApiClient get client => ApiClient(FlavorConfig.instance.baseUrl);
}
