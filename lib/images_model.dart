import 'dart:convert';
import 'package:flutter/material.dart';

class Images {
  final String name;
  final Image image;
  final Image name2;
  final double rating;
  final double reviews;
  final int stars;
  final String description;

  const Images({
    required this.name,
    required this.image,
    required this.name2,
    required this.rating,
    required this.reviews,
    required this.stars,
    required this.description,
  });

  static Images fromJson(json) =>
      Images(
        name: json['name'],
        image: json['image'],
        name2: json['name2'],
        rating: json['rating'],
        reviews: json['reviews'],
        stars: json['stars'],
        description: json['description'],
      );
}

class GamesApi {
  static Future<List<Images>> getGamesLocally(BuildContext context) async {
    final assetBungle = DefaultAssetBundle.of(context);
    final data = await assetBungle.loadString('assets/games.json');
    final body = jsonDecode(data);
    return body.map<Images>(Images.fromJson).toList();
  }
}
