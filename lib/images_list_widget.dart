import 'package:flutter/material.dart';
import 'package:game_account/constants.dart';
import 'package:game_account/container_btn.dart';
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

      final image = images[index];
      Size size = MediaQuery.of(context).size;

      return Container(
        width: size.width,
        color: Colors.transparent,
        child:  Stack(
            children: [

              Positioned(
                  top: 15,
                  left: 4,
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(60)),
                    child: CustomPaint(
                      painter: PainterCircle(),
                    ),
                  )),

              Positioned(
                top: 55,
                left: 28,
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Text(image.rating, style: TextStyle(color: Colors.white.withOpacity(0.9), fontStyle: FontStyle.italic, fontSize: 32, fontFamily: 'Orbitron', ),),
                ),
              ),

              Positioned(
                top: -8,
                left: 55,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Icon(Icons.star, size: 28, color: Colors.yellow.withOpacity(0.8),)
                ),
                ),

              Positioned(
                top: 10,
                left: 77,
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.star, size: 20, color: Colors.yellow.withOpacity(0.8),)
                ),
              ),

              Positioned(
                top: 29,
                left: 86,
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.star, size: 14, color: Colors.yellow.withOpacity(0.8),)
                ),
              ),

              Positioned(
                bottom: 0,
                left: 4,
                child: Container(
                  width: size.width * 0.94,
                  height: size.height * 0.37,
                  color: Colors.transparent,
                  child: CustomPaint(
                    painter: PainterGames(),
                  ),
                ),
                ),

              Positioned(
                top: 10,
                left: 50,
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.asset(
                    'assets/images/${image.image}.png', fit: BoxFit.fitHeight,),
                ),
              ),

              Positioned(
                top: 20,
                left: 180,
                child: Container(
                  width: 200,
                  height: 120,
                  child: Image.asset(
                    'assets/images/${image.name2}.png'),
                ),
              ),

              Positioned(
                top: 170,
                left: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width,
                      child: Text(image.name, style: const TextStyle(fontSize: 35, color: Colors.white, fontFamily: 'Orbitron', fontWeight: FontWeight.bold ),),),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: size.width * 0.87,
                      height: 44,
                      child: SingleChildScrollView(child: Text(image.description, style: const TextStyle(fontSize: 13, color: Colors.white),)),),
                    const SizedBox(height: 7,),
                    SizedBox(
                      width: size.width,
                      child: Text('Rewiews: ${image.reviews}k', style: style1,)),
                    const SizedBox(height: 3,),
                    Row(
                      children:
                      List.generate(int.parse(image.stars),
                          (index) => const Icon(Icons.star, color: Colors.yellow, size: 14,))
                    )
                  ],
                )
              ),

              Positioned(
                  bottom: size.height * 0.03,
                  right: size.width * 0.1,
                  child: Row(
                      children: const [
                      ContainerBtn(
                        sizeW: 130,
                        sizeH: 30,
                        child: Center(child: Text('Get it now!', style: style1,)),),
                      SizedBox(width: 7,),
                      ContainerBtn(
                        sizeW: 30,
                        sizeH: 30,
                        child: Center(child: Text('+', style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold)))),
                      ])),

          ]));
    });
