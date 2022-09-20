import 'package:flutter/material.dart';

import 'package:admin_dashboard/providers/side_menu_provider.dart';
import 'package:admin_dashboard/ui/shared/navbar.dart';
import 'package:admin_dashboard/ui/shared/sidebar.dart';

// ignore_for_file: unnecessary_new
class DashboardLayout extends StatefulWidget {
  const DashboardLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SideMenuProvider.menuController = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xffEDF1F2),
        body: Stack(
          children: [
            Row(
              children: [
                if (size.width >= 700) const Sidebar(),
                Expanded(
                  child: Column(
                    children: [
                      //NAVBAR
                      const NavBar(),

                      //View
                      Expanded(
                          child: Container(
                        // padding: const EdgeInsets.symmetric(
                        //     horizontal: 20, vertical: 10),
                        child: widget.child,
                      ))
                      // My view Conatiner
                    ],
                  ),
                ),
              ],
            ),
            if (size.width < 700)
              AnimatedBuilder(
                  animation: SideMenuProvider.menuController,
                  builder: (context, _) => Stack(
                        children: [
                          if (SideMenuProvider.isOpen)
                            AnimatedOpacity(
                              opacity: SideMenuProvider.opacity.value,
                              duration: const Duration(milliseconds: 200),
                              child: GestureDetector(
                                onTap: () => SideMenuProvider.closeMenu(),
                                child: Container(
                                  width: size.width,
                                  height: size.height,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          Transform.translate(
                            offset: Offset(SideMenuProvider.movement.value, 0),
                            child: const Sidebar(),
                          )
                        ],
                      ))
          ],
        ));
  }
}
