import 'package:eduflex/common/routes/routes.dart';
import 'package:eduflex/common/utils/app_styles.dart';
import 'package:eduflex/global.dart';
import 'package:eduflex/pages/homescreen/home_screen.dart';
import 'package:eduflex/pages/signup/signup_page.dart';
import 'package:eduflex/pages/signin/signin_page.dart';
import 'package:eduflex/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ...

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

//routes
var routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => WelcomeScreen(),
  "/SignIn": (BuildContext context) => const SignInPage(),
  "/SignUp": (BuildContext context) => const SignUpScreen(),
  "/home": (BuildContext context) => const HomeScreen(),
};
Future<void> main() async {
  Global.init();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 786),
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            title: 'Eduflex',
            theme: AppTheme.lightTheme,
            routes: routes,
            onGenerateRoute: AppPages.generateRouteSettings,
          );
        });
  }
}
