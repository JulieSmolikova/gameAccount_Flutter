import 'dart:convert';
import 'package:flutter/material.dart';

class Games {
  final String name;
  final String avatar;
  final String poster;
  final String connected;
  final String playing;
  final String friends;

  const Games({
    required this.name,
    required this.avatar,
    required this.poster,
    required this.connected,
    required this.playing,
    required this.friends,
  });

  static Games fromJson(json) => Games(
        name: json['name'],
        avatar: json['avatar'],
        poster: json['poster'],
        connected: json['connected'],
        playing: json['playing'],
        friends: json['friends'],
      );
}

class GamesApi {
  static Future<List<Games>> getGamesLocally(BuildContext context) async {
    final assetBungle = DefaultAssetBundle.of(context);
    final data = await assetBungle.loadString('assets/games.json');
    final body = jsonDecode(data);
    return body.map<Games>(Games.fromJson).toList();
  }
}
