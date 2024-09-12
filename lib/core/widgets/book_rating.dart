import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/styles.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.bookRating,
    required this.ratingCount,
  });
  final MainAxisAlignment mainAxisAlignment;
  final double bookRating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: kstarColor,
          size: 22,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          bookRating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '($ratingCount)',
          style: Styles.textStyle16
              .copyWith(color: Colors.white60, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
