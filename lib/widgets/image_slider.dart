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
    return CarouselSlider(
      options:
          CarouselOptions(height: 350.0, viewportFraction: 1.0, autoPlay: true),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  )),
            );
          },
        );
      }).toList(),
    );
  }
}
