// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:admin_dashboard/ui/cards/white_card.dart';

class IconsView extends StatelessWidget {
  const IconsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Text('Icos', style: CustomLabels.h1),
          const SizedBox(height: 10),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            children: const [
              WhiteCard(
                  width: 170,
                  title: 'ac_unit_outlined',
                  child: Center(
                    child: Icon(Icons.ac_unit),
                  )),
              WhiteCard(
                  width: 170,
                  title: 'access_alarm_rounded',
                  child: Center(
                    child: Icon(Icons.access_alarm_rounded),
                  )),
              WhiteCard(
                  width: 170,
                  title: 'access_time_filled_outlined',
                  child: Center(
                    child: Icon(Icons.access_time_filled_outlined),
                  )),
              WhiteCard(
                  width: 170,
                  title: 'chair_alt_outlined',
                  child: Center(
                    child: Icon(Icons.chair_alt_outlined),
                  )),
              WhiteCard(
                  width: 170,
                  title: 'build_circle_outlined',
                  child: Center(
                    child: Icon(Icons.build_circle_outlined),
                  )),
              WhiteCard(
                  width: 170,
                  title: 'category_outlined',
                  child: Center(
                    child: Icon(Icons.category_outlined),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
