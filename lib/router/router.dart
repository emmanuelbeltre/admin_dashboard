import 'package:admin_dashboard/router/dashboard_handlers.dart';
import 'package:fluro/fluro.dart';

import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

//initial page route
  static String rootRoute = '/';
  //Auth router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  //Dashboard Router
  static String dashboardRoute = '/dashboard';

  //Auth Routes
  static void configureRoutes() {
//Auth routes

    router.define(rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);

    router.define(registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none);

    //DASHBOARD
    router.define(dashboardRoute, handler: DashboardHandlers.dashboard);
//404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
