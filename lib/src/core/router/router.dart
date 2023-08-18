import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/dashboard/view/dashboard_screen.dart';
import 'package:dba_mobile/src/feature/discover/view/discover_screen.dart';
import 'package:dba_mobile/src/feature/forgot_password/view/change_password_screen.dart';
import 'package:dba_mobile/src/feature/forgot_password/view/forget_password_screen.dart';
import 'package:dba_mobile/src/feature/home/view/home_screen.dart';
import 'package:dba_mobile/src/feature/login/view/login_screen.dart';
import 'package:dba_mobile/src/feature/pharmacy/view/pharmacy_screen.dart';
import 'package:dba_mobile/src/feature/profile/view/profile_screen.dart';
import 'package:dba_mobile/src/feature/register/view/register_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: LoginRoute.page),
        AutoRoute(path: '/register', page: RegistrationRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/forgot_password', page: HomeRoute.page),
        AutoRoute(path: '/change_password', page: HomeRoute.page),

        AutoRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            AutoRoute(path: 'discover', page: DiscoverRoute.page),
            AutoRoute(path: 'pharmacy', page: PharmacyRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page),
            //AutoRoute(path: 'schedule', page: ScheduleRoute.page),
            //  AutoRoute(path: 'more', page: MoreRoute.page),
          ],
        ),

        /// routes go here
      ];
}
