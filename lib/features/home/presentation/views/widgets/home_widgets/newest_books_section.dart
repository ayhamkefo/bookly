import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import 'newest_books_listview.dart';

class NewestBooksSection extends StatelessWidget {
  const NewestBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Text(
            "Newest Books",
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const NewestBooksListView(),
      ],
    );
  }
}
