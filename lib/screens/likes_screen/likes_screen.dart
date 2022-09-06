import 'package:flutter/material.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 15.0,
                spreadRadius: 10.0,
                offset: Offset(10.0, 10.0)),
          ],
        ),
      ),
    );
  }
}
