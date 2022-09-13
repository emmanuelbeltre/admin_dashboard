import 'package:admin_dashboard/ui/shared/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEDF1F2),
        body: Row(
          children: [
            // TODO: Depends if the screen viewport is higer than 700 px
            const Sidebar(),

            // My view Conatiner
            Expanded(child: child)
          ],
        ));
  }
}
