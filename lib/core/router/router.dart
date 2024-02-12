import 'package:flutter/material.dart';
// import 'package:logistics_app/core/constants/routing_path.dart';

class AppRouter {
  static PageRoute _getPageRoute({
    required RouteSettings settings,
    required Widget viewToShow,
  }) {
    return MaterialPageRoute(
        builder: (context) => viewToShow, settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Map<String, dynamic> routeArgs = settings.arguments != null
    //     ? settings.arguments as Map<String, dynamic>
    //     : {};

    switch (settings.name) {
      // case NavigatorRoutes.home:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: const HomeView(),
      //   );
      // case NavigatorRoutes.dashBoardView:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: const DashBoardView(),
      //   );
      // case NavigatorRoutes.onboardingView:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: const OnboardingView(),
      //   );
      // case NavigatorRoutes.loginView:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: LoginView(),
      //   );
      // case NavigatorRoutes.signUpView:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: SignUpView(),
      //   );
      // case NavigatorRoutes.otpVerificationView:
      //   var email = routeArgs[RoutingArgumentKey.email];
      //   var name = routeArgs[RoutingArgumentKey.name];
      //   var password = routeArgs[RoutingArgumentKey.password];
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: OtpVerificationView(
      //       email: email,
      //       name: name,
      //       password: password,
      //     ),
      //   );
      // case NavigatorRoutes.forgotPasswordView:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: ForgotPasswordView(),
      //   );
      // case NavigatorRoutes.emailVerificationView:
      //   var email = routeArgs[RoutingArgumentKey.email];
      //   var name = routeArgs[RoutingArgumentKey.name];
      //   var password = routeArgs[RoutingArgumentKey.password];
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: EmailVerificationView(
      //       email: email,
      //       name: name,
      //       password: password,
      //     ),
      //   );
      // case NavigatorRoutes.resetPasswordView:
      //   return _getPageRoute(
      //     settings: settings,
      //     viewToShow: ResetPasswordView(),
      //   );

      default:
        return _getPageRoute(
          settings: settings,
          viewToShow: const Scaffold(),
        );
    }
  }
}
