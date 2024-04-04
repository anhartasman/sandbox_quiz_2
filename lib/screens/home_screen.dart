import 'package:carousel_slider/carousel_slider.dart';
import 'package:sandbox_quiz/helpers/colors/color_data.dart';
import 'package:sandbox_quiz/modules/home/controllers/home_controller.dart';
import 'package:sandbox_quiz/theme/colors/Warna.dart';
import 'package:sandbox_quiz/theme/styles/text/plusjakartasans_style_text.dart';
import 'package:sandbox_quiz/widgets/CarouselItem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home_screen extends StatelessWidget {
  final HomeController controller;
  const home_screen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final List<Widget> imageSliders = controller.imageList
        .map(
          (item) => CarouselItem(item),
        )
        .toList();

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: statusBarHeight,
            bottom: 8,
            left: 8,
            right: 8,
          ),
          width: Get.width,
          color: buttonColor,
          child: Row(
            children: [
              Container(
                width: 65,
                height: 65,
                child: Image.asset(
                  "assets/icon/app_icon.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  "EDU HSI",
                  style: PlusJakartaSansBold14.copyWith(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "v.2401",
                style: PlusJakartaSansBold14.copyWith(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  "Assallamuallaikum",
                  style: PlusJakartaSansBold14.copyWith(
                    color: Warna.warnaAbuTeks,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  "Anhar Tasman",
                  style: PlusJakartaSansBold14.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 24.0,
                  left: 16,
                  right: 16,
                ),
                child: Text(
                  "ARN192-37188",
                  style: PlusJakartaSansBold14.copyWith(
                    color: Warna.warnaAbuTeks,
                    fontSize: 16,
                  ),
                ),
              ),
              Column(
                children: [
                  CarouselSlider(
                    items: imageSliders,
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 300 / 200,
                      onPageChanged: (index, reason) {
                        controller.current.value = index;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        child: Obx(
                          () => Container(
                            width: 20,
                            height: 10,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: controller.current.value == entry.key
                                  ? buttonColor
                                  : Colors.grey[400],
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  "Evaluasi",
                  style: PlusJakartaSansBold14.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: youngBlueColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8,
                          ),
                          child: Text(
                            "Majalah HSI",
                            style: PlusJakartaSansSemiBold14,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Aktif",
                            style: PlusJakartaSansBold14.copyWith(
                              color: greenColor,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        bottom: 12.0,
                      ),
                      child: Text(
                        "Kuis Majalah HSI Edisi 61",
                        style: PlusJakartaSansBold14.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                      ),
                      child: Text(
                        "Majalah 1445H",
                        style: PlusJakartaSansSemiBold14,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: youngBlueColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: FaIcon(
                                  FontAwesomeIcons.list,
                                  color: buttonColor,
                                ),
                              ),
                              Text(
                                "10 Soal",
                                style: PlusJakartaSansSemiBold12.copyWith(
                                  color: buttonColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 16,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: youngBlueColor,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 8,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.stopwatch,
                                    color: buttonColor,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Rabu, 10 April 2024 . 12:00",
                                    style: PlusJakartaSansSemiBold12.copyWith(
                                      color: buttonColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: greenColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 8,
                      ),
                      child: Center(
                        child: Text(
                          "Kerjakan",
                          style: PlusJakartaSansSemiBold16.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
