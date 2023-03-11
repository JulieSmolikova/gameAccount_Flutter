import 'package:flutter/material.dart';

class PosterBox extends StatelessWidget {
  final String poster;

  const PosterBox({Key? key, required this.poster}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        width: size.width * 0.16,
        height: size.height * 0.062,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.015),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          poster,
          fit: BoxFit.cover,
        ),
      );
  }
}
