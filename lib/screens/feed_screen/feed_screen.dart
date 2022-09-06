import 'package:dating_app/widgets/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              Get.bottomSheet(_profileSummery(), isScrollControlled: true);
            },
          ),
        ),
      ),
    );
  }

  BottomSheet _profileSummery() {
    return BottomSheet(
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        margin: const EdgeInsets.all(15.0),
        height: Get.height * 0.6,
        color: Colors.white,
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ImageSlider(imageUrls: const [
              'https://images.unsplash.com/photo-1474073705359-5da2a8270c64?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=692&q=80',
              'https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
              'https://images.unsplash.com/photo-1563306406-e66174fa3787?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 35,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: () {
                      print("like pressed");
                    },
                    icon: const Icon(
                      Icons.favorite,
                      size: 55,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {
                      Get.toNamed('profile');
                    },
                    icon: const Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.grey,
                    )),
              ],
            )
          ],
        ),
      ),
      onClosing: () {},
      enableDrag: false,
    );
  }

  GestureDetector _profileCard({Function()? onPress}) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              blurRadius: 1.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
          // image: DecorationImage(
          //     image: NetworkImage(
          //         "https://faces-img.xcdn.link/image-lorem-face-1761.jpg"),
          //     fit: BoxFit.cover,
          //     alignment: Alignment.center),
        ),
      ),
    );
  }
}
