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
  static String iconsRoute = '/dashboard/icons';
  static String blankRoute = '/dashboard/blank';

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
    router.define(dashboardRoute,
        handler: DashboardHandlers.dashboard,
        transitionType: TransitionType.fadeIn);

    router.define(iconsRoute,
        handler: DashboardHandlers.icons,
        transitionType: TransitionType.fadeIn);

    router.define(blankRoute,
        handler: DashboardHandlers.blank,
        transitionType: TransitionType.fadeIn);
//404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
