import 'package:fluro/fluro.dart';

import 'package:admin_dashboard/ui/views/dashboard_view.dart';

class DashboardHandlers {
  static Handler dashboard = Handler(handlerFunc: (context, params) {
    return DashboardView();
  });
}
