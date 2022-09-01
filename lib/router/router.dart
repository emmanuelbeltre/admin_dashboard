import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

//initial page route
  static String rootRoute = '/';
  //Auth router
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  //Dashboard Router
  static String dashboardRoute = '/auth/dashboard';

  //Auth Routes
  static void configureRoutes() {
//Auth routes

    router.define(rootRoute, handler: AdminHandlers.login);
    router.define(loginRoute, handler: AdminHandlers.login);

    //TODO: handler to register page
    // router.define(registerRoute, handler: handler);

//404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
