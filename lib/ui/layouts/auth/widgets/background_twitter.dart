import 'package:flutter/material.dart';

class BackgroundTwitter extends StatelessWidget {
  const BackgroundTwitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecoration(),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: const Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Image(
            image: AssetImage('twitter-white-logo.png'),
            width: 400,
          ),
        )),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage('twitter-bg.png'), fit: BoxFit.cover));
  }
}
