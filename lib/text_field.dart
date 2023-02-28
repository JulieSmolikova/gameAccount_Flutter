import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  final String text;
  final double sizeH;
  final double sizeW;
  final double sizeW1;

  const TextFieldCustom(
      {Key? key,
      required this.text,
      required this.sizeH,
      required this.sizeW,
      required this.sizeW1})
      : super(key: key);

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool isSwitched = true;

  void Switched() {
    setState(() {
      isSwitched = !isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: GestureDetector(
          onTap: Switched,
          child: Container(
            height: widget.sizeH,
            width: widget.sizeW,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.search,
              color: Colors.white70.withOpacity(0.5),
              size: 25,
            ),
          )),
      secondChild: Container(
          height: widget.sizeH,
          width: widget.sizeW1,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: TextField(
                style: const TextStyle(color: Colors.white, fontSize: 20),
                cursorColor: Colors.white70,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                isCollapsed: true,
                prefixIcon: Icon(Icons.search,
                  color: Colors.white70.withOpacity(0.5),
                  size: 25,
                ),
                hintText: widget.text,
                hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.white70.withOpacity(0.6),
                    letterSpacing: 7)),
                onSubmitted: (val) {
                Switched();
              },
          ))),
      crossFadeState:
          isSwitched ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 500),
    );
  }
}
