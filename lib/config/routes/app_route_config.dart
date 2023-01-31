import 'package:bloody/config/routes/app_route_constants.dart';
import 'package:bloody/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bloody/pages/BloodDonationEventRegister/Donation1.dart';
import 'package:bloody/pages/BloodDonationEventRegister/Donation2.dart';

class NyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(child: Home());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.donation1RouteName,
        path: '/Donation1',
        pageBuilder: (context, state) {
          return MaterialPage(child: Donation1());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.donation2RouteName,
        path: '/Donation2',
        pageBuilder: (context, state) {
          return MaterialPage(child: Donation2());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
          child: Container(
        child: Center(
          child: Text('ErrorPage'),
        ),
      ));
    },
  );
  // return router;
}
