import 'package:core/flavor/flavor_config.dart';

import 'main_common.dart';

void main() {
  FlavorConfig(
    appTitle: 'App (Staging)',
    baseUrl: 'http://staging.com',
    flavor: Flavor.stage,
  );

  mainCommon();
}
