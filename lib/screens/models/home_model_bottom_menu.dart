import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeModelBottomMenu {
  final IconData theIcon;
  final String label;
  const HomeModelBottomMenu(this.theIcon, this.label);
}

const List<HomeModelBottomMenu> bottomMenuList = [
  HomeModelBottomMenu(
    FontAwesomeIcons.home,
    "Beranda",
  ),
  HomeModelBottomMenu(
    FontAwesomeIcons.graduationCap,
    "Akademi",
  ),
  HomeModelBottomMenu(
    FontAwesomeIcons.clipboardList,
    "Reguler",
  ),
  HomeModelBottomMenu(
    FontAwesomeIcons.user,
    "Profil",
  ),
];
