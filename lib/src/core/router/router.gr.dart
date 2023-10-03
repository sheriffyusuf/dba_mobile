// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AdminEmergencyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminEmergencyScreen(),
      );
    },
    AdminListDoctorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminListDoctorScreen(),
      );
    },
    AdminPatientRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminPatientScreen(),
      );
    },
    AdminRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminScreen(),
      );
    },
    BookAppointDoctorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookAppointDoctorScreen(),
      );
    },
    BookAppointmentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BookAppointmentScreen(),
      );
    },
    CategoryDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryDetailScreen(),
      );
    },
    CategoryListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CategoryListScreen(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChangePasswordScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    DecisionRoute.name: (routeData) {
      final args = routeData.argsAs<DecisionRouteArgs>(
          orElse: () => const DecisionRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DecisionScreen(key: args.key),
      );
    },
    DiscoverRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscoverScreen(),
      );
    },
    DoctorAppointRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorAppointScreen(),
      );
    },
    DoctorDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorDetailsScreen(),
      );
    },
    DoctorsQueueRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorsQueueScreen(),
      );
    },
    DoctorsRoomRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorsRoomScreen(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileScreen(),
      );
    },
    EmergencyRoomRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmergencyRoomScreen(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    JoinQueueRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const JoinQueueScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MyProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyProfileScreen(),
      );
    },
    NearHospitalRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NearHospitalScreen(),
      );
    },
    PatientDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PatientDetailScreen(),
      );
    },
    PharmacyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PharmacyScreen(),
      );
    },
    PoopleOnQueueRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PoopleOnQueueScreen(),
      );
    },
    PopularDoctorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PopularDoctorScreen(),
      );
    },
    PostDoctorRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PostDoctorScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
  };
}

/// generated route for
/// [AdminEmergencyScreen]
class AdminEmergencyRoute extends PageRouteInfo<void> {
  const AdminEmergencyRoute({List<PageRouteInfo>? children})
      : super(
          AdminEmergencyRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminEmergencyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminListDoctorScreen]
class AdminListDoctorRoute extends PageRouteInfo<void> {
  const AdminListDoctorRoute({List<PageRouteInfo>? children})
      : super(
          AdminListDoctorRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminListDoctorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminPatientScreen]
class AdminPatientRoute extends PageRouteInfo<void> {
  const AdminPatientRoute({List<PageRouteInfo>? children})
      : super(
          AdminPatientRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminPatientRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminScreen]
class AdminRoute extends PageRouteInfo<void> {
  const AdminRoute({List<PageRouteInfo>? children})
      : super(
          AdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookAppointDoctorScreen]
class BookAppointDoctorRoute extends PageRouteInfo<void> {
  const BookAppointDoctorRoute({List<PageRouteInfo>? children})
      : super(
          BookAppointDoctorRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookAppointDoctorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BookAppointmentScreen]
class BookAppointmentRoute extends PageRouteInfo<void> {
  const BookAppointmentRoute({List<PageRouteInfo>? children})
      : super(
          BookAppointmentRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookAppointmentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryDetailScreen]
class CategoryDetailRoute extends PageRouteInfo<void> {
  const CategoryDetailRoute({List<PageRouteInfo>? children})
      : super(
          CategoryDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CategoryListScreen]
class CategoryListRoute extends PageRouteInfo<void> {
  const CategoryListRoute({List<PageRouteInfo>? children})
      : super(
          CategoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangePasswordScreen]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DecisionScreen]
class DecisionRoute extends PageRouteInfo<DecisionRouteArgs> {
  DecisionRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DecisionRoute.name,
          args: DecisionRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DecisionRoute';

  static const PageInfo<DecisionRouteArgs> page =
      PageInfo<DecisionRouteArgs>(name);
}

class DecisionRouteArgs {
  const DecisionRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DecisionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [DiscoverScreen]
class DiscoverRoute extends PageRouteInfo<void> {
  const DiscoverRoute({List<PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DoctorAppointScreen]
class DoctorAppointRoute extends PageRouteInfo<void> {
  const DoctorAppointRoute({List<PageRouteInfo>? children})
      : super(
          DoctorAppointRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorAppointRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DoctorDetailsScreen]
class DoctorDetailsRoute extends PageRouteInfo<void> {
  const DoctorDetailsRoute({List<PageRouteInfo>? children})
      : super(
          DoctorDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DoctorsQueueScreen]
class DoctorsQueueRoute extends PageRouteInfo<void> {
  const DoctorsQueueRoute({List<PageRouteInfo>? children})
      : super(
          DoctorsQueueRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorsQueueRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DoctorsRoomScreen]
class DoctorsRoomRoute extends PageRouteInfo<void> {
  const DoctorsRoomRoute({List<PageRouteInfo>? children})
      : super(
          DoctorsRoomRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorsRoomRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EmergencyRoomScreen]
class EmergencyRoomRoute extends PageRouteInfo<void> {
  const EmergencyRoomRoute({List<PageRouteInfo>? children})
      : super(
          EmergencyRoomRoute.name,
          initialChildren: children,
        );

  static const String name = 'EmergencyRoomRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ForgotPasswordScreen]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [JoinQueueScreen]
class JoinQueueRoute extends PageRouteInfo<void> {
  const JoinQueueRoute({List<PageRouteInfo>? children})
      : super(
          JoinQueueRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinQueueRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyProfileScreen]
class MyProfileRoute extends PageRouteInfo<void> {
  const MyProfileRoute({List<PageRouteInfo>? children})
      : super(
          MyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NearHospitalScreen]
class NearHospitalRoute extends PageRouteInfo<void> {
  const NearHospitalRoute({List<PageRouteInfo>? children})
      : super(
          NearHospitalRoute.name,
          initialChildren: children,
        );

  static const String name = 'NearHospitalRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PatientDetailScreen]
class PatientDetailRoute extends PageRouteInfo<void> {
  const PatientDetailRoute({List<PageRouteInfo>? children})
      : super(
          PatientDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PharmacyScreen]
class PharmacyRoute extends PageRouteInfo<void> {
  const PharmacyRoute({List<PageRouteInfo>? children})
      : super(
          PharmacyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PharmacyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PoopleOnQueueScreen]
class PoopleOnQueueRoute extends PageRouteInfo<void> {
  const PoopleOnQueueRoute({List<PageRouteInfo>? children})
      : super(
          PoopleOnQueueRoute.name,
          initialChildren: children,
        );

  static const String name = 'PoopleOnQueueRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PopularDoctorScreen]
class PopularDoctorRoute extends PageRouteInfo<void> {
  const PopularDoctorRoute({List<PageRouteInfo>? children})
      : super(
          PopularDoctorRoute.name,
          initialChildren: children,
        );

  static const String name = 'PopularDoctorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PostDoctorScreen]
class PostDoctorRoute extends PageRouteInfo<void> {
  const PostDoctorRoute({List<PageRouteInfo>? children})
      : super(
          PostDoctorRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostDoctorRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
