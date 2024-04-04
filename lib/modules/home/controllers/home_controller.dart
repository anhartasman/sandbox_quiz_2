import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:sandbox_quiz/architectures/domain/entities/Musyrif.dart';

class HomeController extends GetxController {
  var current = 0.obs;
  var menuActive = 0.obs;
  CarouselController carouselController = CarouselController();

  List<Musyrif> teacherList = [
    Musyrif(
      name: "Diah R.I.S",
      nik: "ART-171-2333",
      description: "Placement Test Sandbox 3",
      group: "CALONPESERTAARN",
      className: "Sandbox",
    ),
    Musyrif(
      name: "Kurnia Andhiwibowo",
      nik: "ART-171-3434",
      description: "Placement Test Sandbox 3",
      group: "CALONPESERTAARN",
      className: "Sandbox",
    ),
    Musyrif(
      name: "Kurnia Andhiwibowo",
      nik: "ART-171-87878",
      description: "Placement Test Sandbox 3",
      group: "CALONPESERTAARN",
      className: "Sandbox",
    ),
  ];

  List<String> imageList = [
    'https://picsum.photos/seed/foto1/300/200',
    'https://picsum.photos/seed/foto2/300/200',
    'https://picsum.photos/seed/foto3/300/200',
    'https://picsum.photos/seed/foto4/300/200',
    'https://picsum.photos/seed/foto5/300/200',
  ];
}
