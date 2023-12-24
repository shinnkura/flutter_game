// import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_game/flappy_bird_game-mai/game/flappy_bird_game.dart';
import 'package:flutter_game/flappy_bird_game-mai/screens/main_menu_screen.dart';
import 'screens/game_over_screen.dart';

class FlappyBirdScreen extends StatelessWidget {
  const FlappyBirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final game = FlappyBirdGame();
    return GameWidget(
      game: game,
      initialActiveOverlays: const [MainMenuScreen.id],
      overlayBuilderMap: {
        'mainMenu': (context, _) => MainMenuScreen(game: game),
        'gameOver': (context, _) => GameOverScreen(game: game),
      },
    );
  }
}
