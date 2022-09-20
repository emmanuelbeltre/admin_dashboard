import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: ListView(physics: const ClampingScrollPhysics(), children: [
        Center(
          child: Text(
            '404 - No Page Found',
            style: GoogleFonts.montserratAlternates(
                fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
