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
import 'package:dba_mobile/src/feature/home/view/admin_list_doctor_screen.dart';
import 'package:dba_mobile/src/feature/home/view/admin_patient_record.dart';
import 'package:dba_mobile/src/feature/home/view/admin_screen.dart';
import 'package:dba_mobile/src/feature/home/view/book_appointment_screen.dart';
import 'package:dba_mobile/src/feature/home/view/doctor_list_screen.dart';
import 'package:dba_mobile/src/feature/home/view/doctors_queue_screen.dart';
import 'package:dba_mobile/src/feature/home/view/emergency_screen.dart';
import 'package:dba_mobile/src/feature/home/view/history_screen.dart';
import 'package:dba_mobile/src/feature/home/view/home_screen.dart';
import 'package:dba_mobile/src/feature/home/view/join_queue_screen.dart';
import 'package:dba_mobile/src/feature/home/view/poeple_on_queue_screen.dart';
import 'package:dba_mobile/src/feature/home/view/upload_doctor_screen.dart';
import 'package:dba_mobile/src/feature/login/view/login_screen.dart';
import 'package:dba_mobile/src/feature/patient_details/view/patient_details_screen.dart';
import 'package:dba_mobile/src/feature/pharmacy/view/pharmacy_screen.dart';
import 'package:dba_mobile/src/feature/profile/view/edit_profile_screen.dart';
import 'package:dba_mobile/src/feature/profile/view/my_profile_screen.dart';
import 'package:dba_mobile/src/feature/profile/view/profile_screen.dart';
import 'package:dba_mobile/src/feature/register/view/register_screen.dart';
import 'package:flutter/material.dart';

import '../../feature/home/view/admin_emergency_screen_list.dart';
import '../../feature/home/view/decision_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: DecisionRoute.page),
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
        AutoRoute(path: '/book_appointment', page: BookAppointmentRoute.page),
        AutoRoute(path: '/my_profile', page: MyProfileRoute.page),

        AutoRoute(path: '/join_queue', page: JoinQueueRoute.page),
        AutoRoute(path: '/emergency_room', page: EmergencyRoomRoute.page),
        AutoRoute(path: '/people on queue', page: PoopleOnQueueRoute.page),
        AutoRoute(
            path: '/book_appointment_doctor',
            page: BookAppointDoctorRoute.page),
        AutoRoute(path: '/doctors_list', page: DoctorsRoomRoute.page),
        AutoRoute(path: '/doctor_queue', page: DoctorsQueueRoute.page),
        AutoRoute(path: '/admin', page: AdminRoute.page),
        //kk
        //  AutoRoute(path: '/admin', page: .page),
        AutoRoute(path: '/admin_emergency', page: AdminEmergencyRoute.page),
        AutoRoute(path: '/admin_list_doctor', page: AdminListDoctorRoute.page),
        AutoRoute(path: '/admin_patient_list', page: AdminPatientRoute.page),
        AutoRoute(path: '/admin_post_doctor', page: PostDoctorRoute.page),

        AutoRoute(
          path: '/dashboard',
          page: DashboardRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'home'),
            AutoRoute(path: 'home', page: HomeRoute.page),
            //   AutoRoute(path: 'discover', page: DiscoverRoute.page),
            //
            AutoRoute(path: 'history', page: HistoryRoute.page),
            AutoRoute(path: 'profile', page: ProfileRoute.page),
            //AutoRoute(path: 'schedule', page: ScheduleRoute.page),
            //  AutoRoute(path: 'more', page: MoreRoute.page),
          ],
        ),

        /// routes go here
      ];
}
