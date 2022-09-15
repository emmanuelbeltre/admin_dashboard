// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class NavbarAvatar extends StatelessWidget {
  const NavbarAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        child: const Image(
            width: 30,
            height: 30,
            image: NetworkImage(
                'https://dl.airtable.com/DH4ROlhgSVG6TpXY0xrI_large_Joel-Monegro-pic-458x458.jpg')),
      ),
    );
  }
}
