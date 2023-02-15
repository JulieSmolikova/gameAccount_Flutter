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
              return const Center(child: CircularProgressIndicator(),);
            default:
              return buildGames(games!);
          }
        });
  }}

  Widget buildGames(List<Games> games) => ListView.builder(
      itemCount: games.length,
      itemBuilder: (context, index){
        final poster = games[index];
        return Container(
          width: 120,
          height: 120,
          color: Colors.red,
          child: Image.asset('assets/posters/${poster.poster}.jpg'),
        );
      }
  );
