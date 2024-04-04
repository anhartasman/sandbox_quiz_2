import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sandbox_quiz/routes/app_routes.dart';
import 'package:sandbox_quiz/services/auth_service.dart';

class MemberGuard extends GetMiddleware {
  final authService = Get.find<AuthService>();

  @override
  RouteSettings? redirect(String? route) {
    // return authService.isLoggedIn
    //     ? null
    //     : const RouteSettings(name: Routes.authLoginRoute);
    return null;
  }
}
