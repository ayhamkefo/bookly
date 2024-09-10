import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import 'home_custom_app_bar.dart';
import 'featured_books_listview.dart';

class FeaturedBooksSection extends StatelessWidget {
  const FeaturedBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: HomeCusotmAppBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: Text(
            'Featured Books',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const FeaturedBooksListView(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
