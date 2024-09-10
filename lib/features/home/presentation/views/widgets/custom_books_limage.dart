import 'package:flutter/material.dart';

class CustomBooksImage extends StatelessWidget {
  const CustomBooksImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
