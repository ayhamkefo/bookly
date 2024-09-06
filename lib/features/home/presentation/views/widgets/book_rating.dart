import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class BooksRating extends StatelessWidget {
  const BooksRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

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
        const Text(
          '4.8',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle16
              .copyWith(color: Colors.white60, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
