import 'package:flutter/material.dart';

class ContainerBtn extends StatelessWidget {
  const ContainerBtn({Key? key, required this.sizeW, required this.sizeH, required this.child}) : super(key: key);

  final double sizeW;
  final double sizeH;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeW,
      height: sizeH,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              0.1,
              0.6,
              0.9
            ],
            colors: [
              Colors.red.withOpacity(0.8),
              Colors.purpleAccent,
              Colors.deepPurpleAccent.withOpacity(0.9)
            ]
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.5),
            blurRadius: 15,
            offset: Offset(-10, -10)
          ),
          BoxShadow(
              color: Colors.deepPurple.withOpacity(0.6),
              blurRadius: 15,
              offset: Offset(15, 15)
          )]
      ),
      child: child,
    );
  }
}
