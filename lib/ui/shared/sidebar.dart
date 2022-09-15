// ignore_for_file: avoid_print

import 'package:admin_dashboard/providers/side_menu_provider.dart';
import 'package:admin_dashboard/ui/shared/widgets/menu_item.dart';
import 'package:flutter/material.dart';

import 'widgets/logo.dart';
import 'widgets/text_separator.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              onPressed: () {
                SideMenuProvider.closeMenu();
              }),
          CustomMenuItem(
              text: 'Orders',
              icon: Icons.shopping_cart_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Analytic',
              icon: Icons.show_chart_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Categories',
              icon: Icons.layers_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Products',
              icon: Icons.dashboard_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Discaunt',
              icon: Icons.attach_money_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Costumers',
              icon: Icons.people_alt_outlined,
              onPressed: () {}),
          const SizedBox(height: 30),
          const TextSeparator(text: 'UI Elementes'),
          CustomMenuItem(
              text: 'Icons', icon: Icons.list_outlined, onPressed: () {}),
          CustomMenuItem(
              text: 'Marketing',
              icon: Icons.mark_email_read_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Campaign',
              icon: Icons.note_add_outlined,
              onPressed: () {}),
          CustomMenuItem(
              text: 'Black', icon: Icons.post_add_outlined, onPressed: () {}),
          CustomMenuItem(
              text: 'Log Out',
              icon: Icons.exit_to_app_outlined,
              onPressed: () {}),
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
