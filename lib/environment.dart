import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum BuildType {
  development,
  production,
}

class Environment {
  static Environment? _instance;

  static Environment? get instance {
    _instance ??= Environment.newInstance(buildType);

    return _instance;
  }

  final BuildType _buildType;

  static BuildType get buildType => instance!._buildType;

  const Environment._internal(this._buildType);

  factory Environment.newInstance(BuildType buildType) {
    //assert(buildType != null);

    _instance ??= Environment._internal(buildType);
    return _instance!;
  }

  bool get isDebuggle => _buildType == BuildType.development;

  void run(Widget app) {
    runApp(app);
  }
}

class FlavorConfig {
  /// Name of flavor
  final String? name;

  /// Color of the banner
  final Color color;

  /// Location of the banner
  final BannerLocation location;

  // api url
  final String baseUrl;

  /// Variables are dynamic
  final Map<String, dynamic> variables;

  /// Private constructor
  FlavorConfig._internal(
      this.name, this.color, this.location, this.baseUrl, this.variables);

  /// Internal instance of FlavorConfig
  static FlavorConfig? _instance;

  /// Instance of FlavorConfig
  static FlavorConfig get instance {
    _instance ??= FlavorConfig();

    return _instance!;
  }

  /// Factory constructor
  factory FlavorConfig({
    String? name,
    Color color = Colors.red,
    BannerLocation location = BannerLocation.topStart,
    String baseUrl = "http://10.0.2.2:3000/api",
    Map<String, dynamic> variables = const {},
  }) {
    _instance = FlavorConfig._internal(
      name,
      color,
      location,
      baseUrl,
      variables,
    );

    return _instance!;
  }
}
