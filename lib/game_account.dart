import 'package:flutter/material.dart';
import 'package:game_account/constants.dart';
import 'package:game_account/games_list_widget.dart';
import 'package:game_account/glow_box.dart';
import 'package:game_account/painter_circle.dart';

class GameAccount extends StatefulWidget {
  const GameAccount({Key? key}) : super(key: key);

  @override
  State<GameAccount> createState() => _GameAccountState();
}

class _GameAccountState extends State<GameAccount> {
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
                  Positioned(
                      top: 37,
                      left: size.width * 0.348,
                      child: Container(
                        height: 125,
                        width: 125,
                        child: CustomPaint(
                          painter: PainterCircle(),
                        ),
                      )),
                  Positioned(
                      top: size.height * 0.4,
                      right: size.width * 0.1,
                      child: const GlowBox(
                          width: 60,
                          height: 60,
                          colorBox: Colors.deepOrange,
                          blurRadius: 200)
                      //const GlowBox(width: 60, height: 60, colorBox: Colors.deepOrange, blurRadius: 200),
                      ),
                  Positioned(
                      bottom: 0,
                      left: size.width * 0.1,
                      child: const GlowBox(
                          width: 80,
                          height: 70,
                          colorBox: Colors.deepOrange,
                          blurRadius: 200)
                      //const GlowBox(width: 80, height: 70, colorBox: Colors.deepOrange, blurRadius: 200),
                      ),
                  Positioned(
                      bottom: 110,
                      right: 10,
                      child: GlowBox(
                          width: 80,
                          height: 100,
                          colorBox: Colors.green.withOpacity(0.9),
                          blurRadius: 200)
                      //GlowBox(width: 80, height: 100, colorBox: Colors.green.withOpacity(0.9), blurRadius: 200),
                      ),
                  Positioned(
                      top: size.height * 0.27,
                      left: size.width * 0.57,
                      child: const GlowBox(
                          width: 20,
                          height: 20,
                          colorBox: Colors.yellow,
                          blurRadius: 30)
                      //const GlowBox(width: 20, height: 20, colorBox: Colors.yellow, blurRadius: 30),
                      ),
                  Positioned(
                      top: 50,
                      left: size.width * 0.64,
                      child: const GlowBox(
                          width: 15,
                          height: 15,
                          colorBox: Colors.white,
                          blurRadius: 20)),
                  Positioned(
                      top: size.height * 0.31,
                      left: 0,
                      child: const GlowBox(
                          width: 100,
                          height: 30,
                          colorBox: Colors.purpleAccent,
                          blurRadius: 150)),
                  Positioned(
                      top: size.height * 0.215,
                      left: -30,
                      child: const GlowBox(
                          width: 110,
                          height: 20,
                          colorBox: Colors.white,
                          blurRadius: 150)),
                  Positioned(
                      top: size.height * 0.07,
                      left: 175,
                      child: GlowBox(
                          width: 70,
                          height: 70,
                          colorBox: Colors.blue.shade200,
                          blurRadius: 200)),
                  Positioned(
                      top: size.height * 0.07,
                      left: 145,
                      child: const GlowBox(
                          width: 60,
                          height: 60,
                          colorBox: Colors.purpleAccent,
                          blurRadius: 200)),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      }),
                      child: Container(
                        height: 40,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white70.withOpacity(0.5),
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: size.width * 0.38,
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              'assets/icons/avatar.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Name ID', style: style2),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text('Smolikova', style: style3)
                        ],
                      )),
                  Positioned(
                      top: 50,
                      left: size.width * 0.65,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(50)),
                      )),
                  Positioned(
                      top: size.height * 0.28,
                      left: size.width * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Friends',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 22,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Text('Request',
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.8),
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                          )
                        ],
                      )),
                  Positioned(
                    top: size.height * 0.35,
                    left: size.width * 0.09,
                    child: Container(
                        height: 45,
                        width: size.width * 0.83,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: TextField(
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          cursorColor: Colors.white70,
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              isCollapsed: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.white70.withOpacity(0.5),
                                size: 25,
                              ),
                              hintText: 'Search or add friends',
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white70.withOpacity(0.4),
                                  letterSpacing: 1)),
                        ))),
                  ),
                  Positioned(
                    top: size.height * 0.45,
                    left: size.width * 0.05,
                    child: Container(
                      width: size.width,
                      height: size.height * 0.5,
                      color: Colors.transparent,
                      child: const GamesListWidget(),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
