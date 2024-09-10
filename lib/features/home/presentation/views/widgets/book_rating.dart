import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

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
        ),
        const SizedBox(
          width: 6,
        ),
        Text(bookRating.toString()),
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
