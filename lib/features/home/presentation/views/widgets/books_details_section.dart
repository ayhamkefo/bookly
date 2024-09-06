import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import 'action_button.dart';
import 'book_rating.dart';
import 'books_details_custom_app_bar.dart';
import 'custom_books_limage.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const BooksDetailsCustomAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * .25, vertical: kPadding),
            child: const CustomBooksImage()),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle20
              .copyWith(fontStyle: FontStyle.italic, color: Colors.white54),
        ),
        const SizedBox(
          height: 17,
        ),
        const BooksRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 38,
        ),
        const ActionButton(),
      ],
    );
  }
}
