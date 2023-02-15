import 'package:flutter/material.dart';

class GameAccount extends StatefulWidget {
  const GameAccount({Key? key}) : super(key: key);

  @override
  State<GameAccount> createState() => _GameAccountState();
}

class _GameAccountState extends State<GameAccount> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                Center(child: Text('data', style: TextStyle(color: Colors.red),)),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
