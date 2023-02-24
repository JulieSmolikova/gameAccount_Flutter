import 'package:flutter/material.dart';
import 'package:game_account/images_model.dart';
import 'package:game_account/painter_games.dart';
import 'package:game_account/painter_circle.dart';

class ImagesListWidget extends StatelessWidget {
  const ImagesListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<Images>>(
      future: ImagesApi.getImagesLocally(context),
      builder: (context, snapshot) {
        final images = snapshot.data;
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            return buildImages(images!);
        }
      });
  }
}

Widget buildImages(List<Images> images) => ListView.builder(
    itemCount: images.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      final name = images[index];
      final image = images[index];
      final name2 = images[index];
      final rating = images[index];
      final reviews = images[index];
      final stars = images[index];
      final description = images[index];
      Size size = MediaQuery.of(context).size;

      return Stack(
        children: [
          // Positioned(
          //   // top: size.height * 0.32,
          //   // left: size.width * 0.03,
          //   child: Container(
          //     width: size.width * 0.94,
          //     height: size.height * 0.37,
          //     color: Colors.transparent,
          //     child: CustomPaint(
          //       painter: PainterGames(),
          //     ),
          //   ),
          // ),
          //
          // Positioned(
          //   // top: size.height * 0.31,
          //   // left: size.width * 0.03,
          //   child: Container(
          //     width: 110,
          //     height: 110,
          //     decoration: BoxDecoration(
          //         color: Colors.transparent,
          //         borderRadius: BorderRadius.circular(60)),
          //     child: CustomPaint(
          //       painter: PainterCircle(),
          //     ),
          //   )),
          Container(
            width: 150,
            height: 150,
            child: Image.asset(
              'assets/images/${image.image}.png',
              fit: BoxFit.cover,
            ),
          )
      ]
      );
    });
