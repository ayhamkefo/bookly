import 'package:flutter/material.dart';

class BooksListViewImage extends StatelessWidget {
  const BooksListViewImage({
    super.key,
    required this.imgUrl,
  });
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
