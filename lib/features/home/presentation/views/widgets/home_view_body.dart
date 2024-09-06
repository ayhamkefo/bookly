import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_listview.dart';
import 'custom_app_bar.dart';
import 'feautred_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: CusotmAppBar(),
            ),
            const FeaturedBooksListView(),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Text(
                "Best Seller",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
      const SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: BestSellerListveiw(),
        ),
      ),
    ]);
  }
}
