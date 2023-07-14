import 'package:dba_mobile/src/core/router/locator.dart';
import 'package:dba_mobile/src/core/router/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';

import 'src/feature/login/provider/login_controller.dart';

/* 
void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(MyApp(settingsController: settingsController));
}
 */

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  inilizeLocator();
   await Firebase.initializeApp(
 
  );
  Get.lazyPut<LoginController>(() => LoginController());

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    // final state = ref.watch(themeProvider);
    return MaterialApp.router(
      title: 'Doctor App',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
