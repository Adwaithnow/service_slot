import 'package:auto_route/auto_route.dart';
import 'auto_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SplashScreen.page,
          path: '/',
        ),
        AutoRoute(
          page: LoginScreen.page,
          path: '/LoginScreen',
        ),
        CustomRoute(
          page: MainScreen.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: 400,
          path: '/',
          children: [
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              durationInMilliseconds: 300,
              initial: true,
              page: HomeScreen.page,
              path: 'HomeScreen',
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              durationInMilliseconds: 300,
              page: HistoryTab.page,
              path: 'BookingHistoryTab',
              children: [
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  durationInMilliseconds: 300,
                  page: BookingHistoryScreen.page,
                  initial: true,
                  path: '',
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideTop,
                  durationInMilliseconds: 300,
                  page: AppointmentBookingScreen.page,
                  path: 'AppointmentBookingScreen',
                ),
              ],
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              durationInMilliseconds: 300,
              page: ProfileScreen.page,
              path: 'ProfileScreen',
            ),
          ],
        ),
      ];
}

@RoutePage(name: 'HistoryTab')
class HistoryTabs extends AutoRouter {
  const HistoryTabs({super.key});
}
