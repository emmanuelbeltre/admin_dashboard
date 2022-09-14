// ignore_for_file: avoid_print

import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:flutter/material.dart';

import 'widgets/logo.dart';
import 'widgets/text_separator.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          const Logo(),
          const SizedBox(height: 50),
          const TextSeparator(text: 'Main'),
          CustomMenuItem(
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              onPressed: () => print('Dashboard')),
          CustomMenuItem(
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              onPressed: () => print('Dashboard')),
          CustomMenuItem(
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              onPressed: () => print('Dashboard')),
          CustomMenuItem(
              text: 'Dashboard',
              icon: Icons.compass_calibration_outlined,
              onPressed: () => print('Dashboard')),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => const BoxDecoration(
      gradient: LinearGradient(colors: [
        Color(0xff092044),
        Color(0xff092040),
      ]),
      boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)]);
}
