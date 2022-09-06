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
        color: Colors.white,
        height: Get.height * 0.8,
        padding: EdgeInsets.all(15.0),
        child: Text("data"),
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
