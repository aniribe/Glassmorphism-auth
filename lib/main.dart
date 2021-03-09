import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/config/locator.dart';
import 'app/config/router.gr.dart';
import 'app/ui/shared/glassmorphism_colors.dart';

Future<void> main() async {
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          canvasColor: Colors.transparent,
          primaryColor: GlassmorphismColors.primaryGrey,
          backgroundColor: GlassmorphismColors.primaryGrey),
      initialRoute: Routes.homeView,
      onGenerateRoute: Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
