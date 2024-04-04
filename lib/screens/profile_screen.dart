import 'package:carousel_slider/carousel_slider.dart';
import 'package:sandbox_quiz/architectures/domain/entities/Musyrif.dart';
import 'package:sandbox_quiz/helpers/colors/color_data.dart';
import 'package:sandbox_quiz/modules/home/controllers/home_controller.dart';
import 'package:sandbox_quiz/theme/colors/Warna.dart';
import 'package:sandbox_quiz/theme/styles/text/plusjakartasans_style_text.dart';
import 'package:sandbox_quiz/widgets/CarouselItem.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profile_screen extends StatelessWidget {
  final HomeController controller;
  const profile_screen(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).viewPadding.top;

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
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Profil",
                  style: PlusJakartaSansBold14.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                "v.2401",
                style: PlusJakartaSansBold14.copyWith(
                  fontSize: 14,
                  color: Warna.warnaAbuTeks,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    bottom: 8,
                  ),
                  margin: EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Image.asset(
                          "assets/icon/app_icon.png",
                          width: 35,
                          height: 35,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Anhar Tasman",
                              style: PlusJakartaSansBold14.copyWith(),
                            ),
                            Text(
                              "ARN192-37188",
                              style: PlusJakartaSansBold14.copyWith(
                                color: Warna.warnaAbuTeks,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8.0),
                        child: FaIcon(
                          FontAwesomeIcons.edit,
                          color: buttonColor,
                        ),
                      ),
                      Text(
                        "Ubah",
                        style: PlusJakartaSansBold14.copyWith(
                          color: buttonColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _InfoItem(
                FontAwesomeIcons.whatsapp,
                "Nomor Whatsapp",
                "62-87886820318",
              ),
              _InfoItem(
                FontAwesomeIcons.home,
                "Alamat",
                "Pati Jawa Tengah",
              ),
              _InfoItem(
                FontAwesomeIcons.mapMarkerAlt,
                "Kabupaten/Kota, Provinsi, Kode Pos",
                "Kab.Pati, Jawa Tengah, 13440",
              ),
              _InfoItem(
                FontAwesomeIcons.ring,
                "Status Pernikahan / Jumlah Anak",
                "Menikah / 1",
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                height: 25,
                thickness: 5,
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: 24,
                        child: FaIcon(
                          Icons.headset_mic,
                          color: buttonColor,
                        ),
                      ),
                    ),
                    Text(
                      "List Musyrif / Musyrifah",
                      style: PlusJakartaSansBold14.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      controller.teacherList.length,
                      (index) => _MusyrifItem(
                            controller.teacherList[index],
                            isLast: index + 1 == controller.teacherList.length,
                          )),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                height: 25,
                thickness: 5,
                color: Colors.grey.withOpacity(0.2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: 24,
                        child: FaIcon(
                          FontAwesomeIcons.infoCircle,
                          color: buttonColor,
                        ),
                      ),
                    ),
                    Text(
                      "Info Lainnya",
                      style: PlusJakartaSansBold14.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              _MenuItem(
                Icons.lock_open,
                "Ganti Password",
              ),
              _MenuItem(
                Icons.bug_report,
                "Lapor Bug & Masalah Aplikasi",
              ),
              _MenuItem(
                Icons.question_mark_rounded,
                "Bantuan",
              ),
              _MenuItem(
                Icons.shield_rounded,
                "Kebijakan Privasi",
                isLast: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MusyrifItem extends StatelessWidget {
  final Musyrif theTeacher;
  final bool isLast;
  const _MusyrifItem(
    this.theTeacher, {
    super.key,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      padding: EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  theTeacher.name,
                  style: PlusJakartaSansRegular14,
                ),
              ),
              Text(
                "(${theTeacher.nik})",
                style: PlusJakartaSansRegular14.copyWith(
                  color: Warna.warnaAbuTeks,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              theTeacher.description,
              style: PlusJakartaSansRegular14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Group: ${theTeacher.group}",
              style: PlusJakartaSansRegular14,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    theTeacher.className,
                    style: PlusJakartaSansRegular14.copyWith(
                      color: buttonColor,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: greenColor,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 4,
                ),
                child: Row(
                  children: [
                    Text(
                      "Hubungi",
                      style: PlusJakartaSansBold14.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: FaIcon(
                        FontAwesomeIcons.whatsapp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData iconData;
  final String infoLabel;
  final String infoValue;
  const _InfoItem(this.iconData, this.infoLabel, this.infoValue, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 24,
              child: FaIcon(
                iconData,
                color: buttonColor,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  infoLabel,
                  style: PlusJakartaSansBold14.copyWith(
                    color: Warna.warnaAbuTeks,
                  ),
                ),
                Text(
                  infoValue,
                  style: PlusJakartaSansBold14.copyWith(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData iconData;
  final String menuLabel;
  final bool isLast;
  const _MenuItem(
    this.iconData,
    this.menuLabel, {
    super.key,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 16,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              width: 24,
              child: FaIcon(
                iconData,
                color: buttonColor,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                menuLabel,
                style: PlusJakartaSansBold14,
              ),
            ),
          ),
          FaIcon(
            FontAwesomeIcons.chevronRight,
            color: buttonColor,
          ),
        ],
      ),
    );
  }
}
