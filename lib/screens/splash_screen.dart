import 'package:sandbox_quiz/routes/app_routes.dart';
import 'package:sandbox_quiz/services/auth_service.dart';
import 'package:sandbox_quiz/theme/styles/text/poppins_style_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2))
        .then((value) => Get.offNamed(Routes.homeMenuRoute));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/icon/app_icon.png",
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
