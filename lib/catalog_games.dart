import 'package:flutter/material.dart';
import 'package:game_account/constants.dart';
import 'package:game_account/posters_list_widget.dart';
import 'package:game_account/text_field.dart';

class CatalogGames extends StatefulWidget {
  const CatalogGames({Key? key}) : super(key: key);

  @override
  State<CatalogGames> createState() => _CatalogGamesState();
}

class _CatalogGamesState extends State<CatalogGames> {

  // int SelectedTab = 0;
  //
  // final List bottomNavIcons = [
  //   'diamond.png', 'download.png', 'menu.png', 'nut.png', 'trolley.png'
  // ];
  //
  // void onSelectedTab(int index) {
  //   if (SelectedTab == index) return;
  //   setState(() {
  //     SelectedTab = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
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
                            onTap: ((){
                              setState(() {
                                Navigator.of(context).pushNamed('/game_account');
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
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.13,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.12,
                            ),
                            Container(
                              width: size.width * 0.16,
                              height: size.height * 0.062,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/posters/p06.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Container(
                              width: size.width * 0.16,
                              height: size.height * 0.062,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/posters/p16.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Container(
                              width: size.width * 0.16,
                              height: size.height * 0.062,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/posters/p03.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.03,
                            ),
                            Container(
                              width: size.width * 0.16,
                              height: size.height * 0.062,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset(
                                'assets/posters/p08.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.12,
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
                      top: size.height * 0.26,
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
                    top: size.height * 0.32,
                    left: size.width * 0.01,
                    child: Container(
                      width: size.width * 0.98,
                      height: size.height * 0.37,
                      color: Colors.grey,
                    ),
                  ),

                  Positioned(
                      top: size.height * 0.72,
                      left: size.width * 0.01,
                      child:
                      // Container(
                      //   width: size.width,
                      //   height: size.height * 0.25,
                      //   color: Colors.grey,
                      //   child: Center(child: Image.asset('assets/posters/p01.jpg')),
                      // )
                    Container(
                      width: size.width,
                        //height: size.height * 0.25,
                        height: 120,
                        color: Colors.grey,
                      child: PostersListWidget(),
                    )
                  ),


                  // BottomNavigationBar(
                  //   currentIndex: SelectedTab,
                  //   items: [
                  //     BottomNavigationBarItem(icon: Image.asset('assets/icons/diamond.png')),
                  //     BottomNavigationBarItem(icon: Image.asset('assets/icons/diamond.png')),
                  //     BottomNavigationBarItem(icon: Image.asset('assets/icons/diamond.png')),
                  //     BottomNavigationBarItem(icon: Image.asset('assets/icons/diamond.png')),
                  //     BottomNavigationBarItem(icon: Image.asset('assets/icons/diamond.png'))
                  //   onTap: (index) {
                  //     onSelectedTab(index);
                  //   },
                  // )


                ],
              )),
        ),
      ),
    );
  }
}
