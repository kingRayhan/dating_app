import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageSliderController extends GetxController {
  var currentSlideIndex = 0.obs;
}

class ImageSlider extends StatelessWidget {
  final List<String> imageUrls;

  ImageSlider({
    required this.imageUrls,
    Key? key,
  }) : super(key: key);

  ImageSliderController _c = ImageSliderController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 350.0,
        viewportFraction: 1.0,
        autoPlay: true,
        onPageChanged: (index, reason) {
          print(index);
        },
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) =>
          Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: NetworkImage(imageUrls[index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
      itemCount: imageUrls.length,
    );
  }
}
