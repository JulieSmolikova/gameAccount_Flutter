import 'package:flutter/material.dart';
import 'package:game_account/games_model.dart';

class PostersListWidget extends StatelessWidget {
  const PostersListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Games>>(
        future: GamesApi.getGamesLocally(context),
        builder: (context, snapshot) {
          final games = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              return buildGames(games!);
          }
        });
  }
}

Widget buildGames(List<Games> games) => ListView.builder(
    itemCount: games.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      final poster = games[index];
      return Container(
        width: 150,
        margin: const EdgeInsets.only(left: 10),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Image.asset(
          'assets/posters/${poster.poster}.jpg',
          fit: BoxFit.cover,
        ),
      );
    });
