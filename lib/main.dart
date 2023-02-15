import 'package:flutter/material.dart';
import 'package:game_account/catalog_games.dart';
import 'package:game_account/game_account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/catalog_games': (context) => const CatalogGames(),
        '/game_account': (context) => const GameAccount(),
      },
      initialRoute: '/catalog_games',
      home: const Scaffold(),
    );
  }
}
