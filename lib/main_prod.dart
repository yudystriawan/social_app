import 'package:core/flavor/flavor_config.dart';

import 'main_common.dart';

void main() {
  FlavorConfig(
    appTitle: 'App',
    baseUrl: 'http://production.com',
    flavor: Flavor.prod,
  );

  mainCommon();
}
