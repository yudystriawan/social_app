enum Flavor { dev, stage, prod }

class FlavorConfig {
  final String appTitle;
  final String baseUrl;
  final Flavor flavor;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required String appTitle,
    required String baseUrl,
    required Flavor flavor,
  }) {
    return _instance ??= FlavorConfig._internal(appTitle, baseUrl, flavor);
  }

  FlavorConfig._internal(
    this.appTitle,
    this.baseUrl,
    this.flavor,
  );

  static FlavorConfig get instance => _instance!;
  static bool get isDevelopment => _instance?.flavor == Flavor.dev;
  static bool get isStaging => _instance?.flavor == Flavor.stage;
  static bool get isProduction => _instance?.flavor == Flavor.prod;
}
