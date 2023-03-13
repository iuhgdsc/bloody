import 'package:bloody/model/blood_banner.dart';
import 'package:bloody/screens/bloodDonationEventRegister/address_blood_gr.dart';
import 'package:bloody/screens/bloodDonationEventRegister/qa.dart';
import 'package:bloody/screens/home.dart';
import 'package:bloody/screens/login.dart';
import 'package:bloody/screens/otp_login.dart';
import 'package:bloody/screens/personal_info.dart';
import 'package:bloody/screens/searchAdvance/search_advance.dart';
import 'package:bloody/screens/signUp/auth_face_signup.dart';
import 'package:bloody/screens/signUp/auth_id_signup.dart';
import 'package:bloody/screens/signUp/signup_info.dart';
import 'package:bloody/screens/signUp/success_signup.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_route_constants.dart';

class NyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.loginRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Login());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/home',
        pageBuilder: (context, state) {
          return const MaterialPage(
              child: Home(
            isSucc: false,
          ));
        },
      ),
      GoRoute(
          name: MyAppRouteConstants.addressBloodGr,
          path: '/AddressBloodGr',
          pageBuilder: (context, state) {
            CenterBlood centerBlood = state.extra as CenterBlood;

            return NoTransitionPage<void>(
              key: state.pageKey,
              child: AddressBloodGr(
                centerBlood: centerBlood,
              ),
            );
          }),
      GoRoute(
          name: MyAppRouteConstants.qaRoute,
          path: '/QA',
          pageBuilder: (context, state) {
            CenterBlood centerBlood = state.extra as CenterBlood;
            String timeChoose = state.queryParams['time'] ?? '';
            return NoTransitionPage<void>(
              key: state.pageKey,
              child: QA(
                centerBlood: centerBlood,
                time: timeChoose,
              ),
            );
          }),
      GoRoute(
        name: MyAppRouteConstants.successRoute,
        path: '/SuccessRegister',
        pageBuilder: (context, state) => NoTransitionPage<void>(
          key: state.pageKey,
          child: const Home(
            isSucc: true,
          ),
        ),
      ),
      GoRoute(
        name: MyAppRouteConstants.searchAdvancedRouteName,
        path: '/SearchAdvanced',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SearchAdvanced());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.otpLoginRouteName,
        path: '/optLogin',
        pageBuilder: (context, state) {
          String phone = state.queryParams['phone'] ?? '';
          return MaterialPage(
              child: OtpLogin(
            phone: phone,
          ));
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.signUpRouteName,
        path: '/signUp',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SignUpInfo());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.authIDRouteName,
        path: '/authID',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AuthIDSignUp());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.authFaceRouteName,
        path: '/authFace',
        pageBuilder: (context, state) {
          return const MaterialPage(child: AuthFaceSignUp());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.signUpSuccessRouteName,
        path: '/signUpSuccess',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SuccessSignUp());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.personRouteName,
        path: '/person',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Person());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(
          child: Center(
        child: Text('ErrorPage'),
      ));
    },
  );
}
