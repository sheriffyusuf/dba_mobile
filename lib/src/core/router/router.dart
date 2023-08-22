import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/src/feature/dashboard/view/dashboard_screen.dart';
import 'package:dba_mobile/src/feature/discover/view/discover_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/all_category_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/book_appointment_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/categories_details_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/doctor_appointment_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/doctor_details_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/near_hospital_screen.dart';
import 'package:dba_mobile/src/feature/doctor_appointment/view/popular_doctor_screen.dart';
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
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/register', page: RegistrationRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/forgot_password', page: ForgotPasswordRoute.page),
        AutoRoute(path: '/change_password', page: ChangePasswordRoute.page),
        AutoRoute(path: '/doctor_appointment', page: DoctorAppointRoute.page),
        AutoRoute(path: '/categories_details', page: CategoryDetailRoute.page),
        AutoRoute(path: '/categories_list', page: CategoryListRoute.page),
        AutoRoute(path: '/near_hospital', page: NearHospitalRoute.page),
        AutoRoute(path: '/doctor_details', page: DoctorDetailsRoute.page),
        AutoRoute(path: '/popular_doctors', page: PopularDoctorRoute.page),
        AutoRoute(path: '/book_appointment_', page: BookAppointmentRoute.page),

        AutoRoute(
          path: '/',
          page: DashboardRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            // AutoRoute(path: 'discover', page: DiscoverRoute.page),
            AutoRoute(path: 'pharmacy', page: PharmacyRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page),
            //AutoRoute(path: 'schedule', page: ScheduleRoute.page),
            //  AutoRoute(path: 'more', page: MoreRoute.page),
          ],
        ),

        /// routes go here
      ];
}
