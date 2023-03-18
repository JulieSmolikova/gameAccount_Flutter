import 'package:flutter/material.dart';
import 'package:game_account/constants.dart';
import 'package:game_account/painter_account.dart';
import 'package:game_account/painter_circle.dart';
import 'package:game_account/games_model.dart';

class GamesListWidget extends StatelessWidget {
  const GamesListWidget({Key? key}) : super(key: key);

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
    scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      final game = games[index];
      Size size = MediaQuery.of(context).size;

      return Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          width: size.width * 0.9,
          height: 100,
          color: Colors.transparent,
          child: Stack(children: [
            Positioned(
                top: 0,
                left: 4,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: CustomPaint(
                    painter: PainterCircle(),
                  ),
                )),
            Positioned(
              top: 7,
              left: 11,
              child: Container(
                width: 56,
                height: 56,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(50)),
                child: Image.asset('assets/avatars/${game.avatar}.png'),
              ),
            ),
            Positioned(
                top: 4,
                left: size.width * 0.16,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                      color: game.connected == 'true'
                          ? Colors.green.shade200
                          : Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                )),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: size.width * 0.9,
                  height: 100,
                  color: Colors.transparent,
                  child: CustomPaint(
                    painter: PainterAccount(),
                  ),
                )),
            Positioned(
                top: 15,
                left: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(game.name, style: style5),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(game.connected == 'true' ? 'Connected' : 'Offline',
                        style: TextStyle(
                            fontSize: 12,
                            color: (game.connected == 'true'
                                ? Colors.white.withOpacity(0.8)
                                : Colors.red.shade800.withOpacity(0.8)),
                            fontStyle: FontStyle.italic)),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Playing:',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white.withOpacity(0.8),
                                fontStyle: FontStyle.italic)),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(game.playing, style: style4),
                      ],
                    )
                  ],
                )),
            Positioned(
                top: 15,
                right: 70,
                child: Container(
                    width: 60,
                    height: 65,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: game.connected == 'true'
                        ? Image.asset('assets/posters/${game.poster}.jpg',
                            fit: BoxFit.fill)
                        : null)),
            Positioned(
                top: 15,
                left: size.width * 0.845,
                child: Column(
                  children: [
                    SizedBox(
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    SizedBox(
                      child: Icon(
                        Icons.circle,
                        size: 6,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    )
                  ],
                ))
          ]));
    });
