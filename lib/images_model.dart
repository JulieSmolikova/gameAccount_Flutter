import 'dart:convert';
import 'package:flutter/material.dart';

class Images {
  final String name;
  final String image;
  final String name2;
  final String rating;
  final String reviews;
  final String stars;
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

class ImagesApi {
  static Future<List<Images>> getImagesLocally(BuildContext context) async {
    final assetBungle = DefaultAssetBundle.of(context);
    final data = await assetBungle.loadString('assets/images.json');
    final body = jsonDecode(data);
    return body.map<Images>(Images.fromJson).toList();
  }
}
