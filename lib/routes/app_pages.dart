import 'package:sandbox_quiz/middlewares/member_guard.dart';

import 'package:sandbox_quiz/modules/home/bindings/home_binding.dart';
import 'package:sandbox_quiz/modules/home/views/home_view.dart';
import 'package:sandbox_quiz/screens/splash_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sandbox_quiz/injection_container.dart' as di;
import 'package:sandbox_quiz/routes/app_routes.dart';

final appPages = [
  GetPage(
    name: Routes.homeRoute,
    page: () => splash_screen(),
  ),
  GetPage(
    name: Routes.homeMenuRoute,
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
];
