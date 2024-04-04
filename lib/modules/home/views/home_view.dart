import 'package:sandbox_quiz/screens/home_screen.dart';
import 'package:sandbox_quiz/screens/profile_screen.dart';
import 'package:sandbox_quiz/widgets/navbar/HomeNavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        if (controller.menuActive.value == 0) {
          return home_screen(controller);
        }
        if (controller.menuActive.value == 3) {
          return profile_screen(controller);
        }
        return Container();
      }),
      bottomNavigationBar: HomeNavBar(controller),
    );
  }
}
