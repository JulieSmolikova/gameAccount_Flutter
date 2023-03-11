import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:game_account/constants.dart';
import 'package:game_account/curved_nav_bar.dart';
import 'package:game_account/images_list_widget.dart';
import 'package:game_account/painter_circle.dart';
import 'package:game_account/painter_games.dart';
import 'package:game_account/posters_list_widget.dart';
import 'package:game_account/text_field.dart';
import 'package:game_account/poster_box.dart';

class CatalogGames extends StatefulWidget {
  const CatalogGames({Key? key}) : super(key: key);

  @override
  State<CatalogGames> createState() => _CatalogGamesState();
}

class _CatalogGamesState extends State<CatalogGames> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Kbkgr,
          body: Container(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.blue.shade900,
                                blurRadius: 20,
                                offset: const Offset(-10, -10))
                          ]),
                          child: GestureDetector(
                            onTap: (() {
                              setState(() {
                                Navigator.of(context)
                                    .pushNamed('/game_account');
                              });
                            }),
                            child: ClipOval(
                              child: Container(
                                width: 52,
                                height: 52,
                                color: Colors.grey.withOpacity(0.5),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.5),
                                    child: SizedBox(
                                      width: 52,
                                      height: 52,
                                      child: ClipOval(
                                          child: Image.asset(
                                              'assets/icons/avatar.jpg',
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/icons/crown.png'),
                        ),
                        const TextFieldCustom(
                          text: '',
                          sizeH: 45,
                          sizeW: 60,
                          sizeW1: 150,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 60,
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                            child: Text(
                          '10',
                          style: style1,
                        )),
                      )),
                  Positioned(
                    top: size.height * 0.13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.105,
                            ),
                            const PosterBox(poster:'assets/posters/p06.jpg',
                            ),
                            const PosterBox(poster:'assets/posters/p16.jpg',
                            ),
                            const PosterBox(poster:'assets/posters/p03.jpg',
                            ),
                            const PosterBox(poster:'assets/posters/p08.jpg',
                            ),
                            SizedBox(
                              width: size.width * 0.105,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: size.width * 0.38,
                              height: 2,
                              color: Colors.white.withOpacity(0.7),
                            ),
                            Container(
                              width: size.width * 0.35,
                              height: 2,
                              color: Colors.white.withOpacity(0.2),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.173,
                    right: size.width * 0.38,
                    child: Container(
                      height: 50,
                      width: 90,
                      color: Colors.transparent,
                      child: Image.asset(
                        'assets/icons/1.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.2,
                    right: size.width * 0.47,
                    child: Container(
                      height: 10,
                      width: 20,
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(color: Colors.white, blurRadius: 10)
                          ]),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.203,
                    right: size.width * 0.4,
                    child: Container(
                      height: 10,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(color: Colors.white, blurRadius: 20)
                          ]),
                    ),
                  ),
                  Positioned(
                      top: size.height * 0.25,
                      left: size.width * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Discover',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 22,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Text('Examine',
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.8),
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold))
                        ],
                      )),
                  Positioned(
                    top: size.height * 0.29,
                    left: size.width * 0.02,
                    child: Container(
                        width: size.width * 0.96,
                        height: size.height * 0.4,
                        color: Colors.transparent,
                        child: const ImagesListWidget()),
                  ),
                  Positioned(
                      top: size.height * 0.72,
                      left: size.width * 0.01,
                      child: Container(
                        width: size.width,
                        height: size.height * 0.25,
                        color: Colors.transparent,
                        child: const PostersListWidget(),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: SizedBox(
                          height: 60,
                          width: size.width,
                          child: const BottomNavBar())),
                ],
              )),
        ),
      ),
    );
  }
}
