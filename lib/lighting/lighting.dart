import 'package:bonfire/base/game_component.dart';
import 'package:bonfire/lighting/lighting_config.dart';
import 'package:bonfire/lighting/lighting_type.dart';

/// Mixin used to configure lighting in your component
mixin Lighting on GameComponent {
  LightingConfig? _lightingConfig;

  /// Used to set configuration
  void setupLighting(LightingConfig? config) => _lightingConfig = config;

  LightingConfig? get lightingConfig => _lightingConfig;

  double get lightingAngle {
    if (_lightingConfig != null && _lightingConfig?.type is ArcLightingType) {
      var type = _lightingConfig?.type as ArcLightingType;
      if (type.isCenter) {
        return this.angle - (type.endRadAngle / 2);
      } else {
        return this.angle - type.endRadAngle;
      }
    }
    return 0.0;
  }
}
