import 'package:bonfire/bonfire.dart';
import 'package:example/platform/fox_player.dart';
import 'package:flutter/material.dart';

class PlatformGame extends StatefulWidget {
  const PlatformGame({Key? key}) : super(key: key);

  @override
  State<PlatformGame> createState() => _PlatformGameState();
}

class _PlatformGameState extends State<PlatformGame> {
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled('platform/platform_map.tmj'),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      backgroundColor: const Color(0xFF2fbdff),
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 3,
      ),
      player: FoxPlayer(
        position: Vector2(50 * 16, 3 * 16),
      ),
    );
  }
}
