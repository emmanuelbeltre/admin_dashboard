import 'dart:ffi';

import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Function myFunction;

    final size = MediaQuery.of(context).size;
    return Container(
        color: Colors.black,
        height: size.height * 0.05,
        child: Wrap(
          children: [
            LinkText(text: 'About', onPressed: () => print('About')),
            const LinkText(text: 'Help Center'),
            const LinkText(text: 'Terms of Service'),
            const LinkText(text: 'Privacy Policy'),
            const LinkText(text: 'Cookie Policy'),
            const LinkText(text: 'Ads Info'),
            const LinkText(text: 'Blog'),
            const LinkText(text: 'Status'),
            const LinkText(text: 'Carrers'),
            const LinkText(text: 'Brand Resources'),
            const LinkText(text: 'Advertising'),
            const LinkText(text: 'Marketing '),
          ],
        ));
  }
}
