import 'package:auto_route/auto_route.dart';
import 'package:dba_mobile/gen/assets.gen.dart';
import 'package:dba_mobile/src/component/app_color.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      routes: const [
        HomeRoute(),
        // DiscoverRoute(),
        // PharmacyRoute(),
        //ScheduleRoute(),
        HistoryRoute(),
        ProfileRoute()
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          /* appBar: AppBar(
              title: Text(context.topRoute.name),
              leading: const AutoLeadingButton()), */
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: const Color(0xFF546EF7),
            unselectedItemColor: AppPalette.grey.gray400,
            selectedLabelStyle: GoogleFonts.poppins(
                color: const Color(0xFF546EF7), fontWeight: FontWeight.w500),
            unselectedLabelStyle: GoogleFonts.poppins(
                color: AppPalette.grey.gray300, fontWeight: FontWeight.w500),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Assets.images.home.svg(),
                activeIcon:
                    Assets.images.home.svg(color: const Color(0xFF546EF7)),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Assets.images.pharm.svg(),
                activeIcon:
                    Assets.images.pharm.svg(color: const Color(0xFF546EF7)),
                label: 'History',
              ),
              /*  BottomNavigationBarItem(
                icon: Assets.images.icons.draft.svg(),
                activeIcon: Assets.images.icons.draft
                    .svg(color: AppPalette.primary.primary400),
                label: 'Draft',
              ), */
              /* BottomNavigationBarItem(
                icon: Assets.images.pharm.svg(),
                activeIcon:
                    Assets.images.pharm.svg(color: const Color(0xFF546EF7)),
                label: 'Pharmacy',
              ), */
              BottomNavigationBarItem(
                icon: Assets.images.profile.svg(),
                activeIcon:
                    Assets.images.profile.svg(color: const Color(0xFF546EF7)),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
