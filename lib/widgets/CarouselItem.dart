import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String theImage;
  const CarouselItem(this.theImage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          child: Image.network(
            theImage,
            fit: BoxFit.fill,
          )),
    );
  }
}
