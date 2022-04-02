import 'package:core/flavor/flavor_config.dart';
import 'package:ddd_sample/main_common.dart';

void main() {
  FlavorConfig(
    appTitle: 'App (Dev)',
    baseUrl: 'https://mock.codes',
    flavor: Flavor.dev,
  );

  mainCommon();
}
