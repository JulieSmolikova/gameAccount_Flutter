import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom(
      {Key? key,
        required this.text,
        required this. sizeH,
        required this. sizeW})
      : super(key: key);

  final String text;
  final double sizeH;
  final double sizeW;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeH,
      width: sizeW,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: TextField(
            style: const TextStyle(color: Colors.white, fontSize: 20),
            cursorColor: Colors.white70,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                isCollapsed: true,
                prefixIcon: Center(
                  child: Icon(
                    Icons.search,
                    color: Colors.white70.withOpacity(0.5),
                    size: 25,
                  ),
                ),
                hintText: text,

                hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.white70.withOpacity(0.6),
                    letterSpacing: 7),

                // focusedBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //       color:
                //       Colors.grey.withOpacity(0.2),
                //       width: 2.0),
                //   borderRadius: BorderRadius.circular(10),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10),
                //   borderSide: BorderSide(
                //       color:
                //       Colors.grey.withOpacity(0.2),
                //       width: 2.0),)

            )),
      ),
    );
  }
}
