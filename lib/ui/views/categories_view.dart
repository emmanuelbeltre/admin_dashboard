// ignore_for_file: avoid_unnecessary_containers
import 'package:admin_dashboard/datatables/categories_datasource.dart';
import 'package:flutter/material.dart';

import 'package:admin_dashboard/ui/labels/custom_labels.dart';
import 'package:admin_dashboard/ui/cards/white_card.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Text('Categories', style: CustomLabels.h1),
          const SizedBox(height: 10),
          PaginatedDataTable(columns: [
            DataColumn(label: Text('ID')),
            DataColumn(label: Text('Catedory')),
            DataColumn(label: Text('Created for')),
            DataColumn(label: Text('Acctions')),
          ], source: CategoriesDTS()),
        ],
      ),
    );
  }
}
