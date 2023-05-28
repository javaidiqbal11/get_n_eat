import 'package:getneat/widgets/intro.dart' deferred as intro;
import 'package:getneat/widgets/splash.dart' deferred as splashScreen;
import 'package:qlevar_router/qlevar_router.dart';
import 'deferred_loader.dart';

class Routes {
  static final routes = <QRoute>[
    QRoute(
      path: '/splashScreen',
      pageType: const QFadePage(
        transitionDuration: Duration(milliseconds: 100),
        //transitionDurationMilliseconds: 100,
        withType: QCustomPage(
        //transitionDurationMilliseconds: 500
        transitionDuration: Duration(milliseconds: 500),
        ), // set the type to mix with
      ),
      builder: () =>splashScreen.SplashScreen(),
      middleware: [
        DefferedLoader(splashScreen.loadLibrary),
      ],
    ),

    QRoute(
      path: '/intro',
      pageType: const QFadePage(
       transitionDuration: Duration(milliseconds: 100),
        withType: QCustomPage(
         transitionDuration: Duration(milliseconds: 500),
         ), // set the type to mix with
      ),
      builder: () =>intro.IntroScreen(),
      middleware: [
        DefferedLoader(intro.loadLibrary),
      ],
    ),
  ];
}
