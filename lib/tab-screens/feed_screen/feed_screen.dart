import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/image_slider.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.builder(
        itemCount: 30,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 25.0,
            childAspectRatio: 0.666666667),
        itemBuilder: (context, index) => _profileCard(
          onPress: () {
            Get.bottomSheet(_profileSummery());
          },
        ),
      ),
    );
  }

  BottomSheet _profileSummery() {
    return BottomSheet(
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        margin: const EdgeInsets.all(15.0),
        color: Colors.white,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [ImageSlider(imageUrls: [])],
        ),
      ),
      onClosing: () {},
      enableDrag: false,
    );
  }

  GestureDetector _profileCard({Function()? onPress}) {
    return GestureDetector(
      onTap: onPress,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black, //color of shadow
            //     spreadRadius: 5, //spread radius
            //     blurRadius: 700, // blur radius
            //     offset: Offset(0, 2), // changes position of shadow
            //   ),
            //   //you can set more BoxShadow() here
            // ],
            image: DecorationImage(
                image: NetworkImage(
                    "https://faces-img.xcdn.link/image-lorem-face-1761.jpg"),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
        ),
      ),
    );
  }
}
