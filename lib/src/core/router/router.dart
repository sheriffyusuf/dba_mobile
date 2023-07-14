import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/home/view/home_screen.dart';
import 'package:dba_mobile/src/feature/login/view/login_screen.dart';
import 'package:dba_mobile/src/feature/register/view/register_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: LoginRoute.page),
        AutoRoute(path: '/register', page: RegistrationRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),

        /// routes go here
      ];
}
