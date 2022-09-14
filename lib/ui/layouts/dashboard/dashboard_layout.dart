import 'package:admin_dashboard/ui/shared/navbar.dart';
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
            // TOD O: Depends if the screen viewport is higer than 700 px
            const Sidebar(),
            Expanded(
              child: Column(
                children: [
                  //NAVBAR
                  NavBar(),

                  //View
                  Expanded(child: child)
                  // My view Conatiner
                ],
              ),
            ),
          ],
        ));
  }
}
