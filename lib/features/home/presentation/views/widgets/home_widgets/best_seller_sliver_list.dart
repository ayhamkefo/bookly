import 'package:flutter/material.dart';

import '../../../../../../constants.dart';
import 'book_sliver_list_iteam.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 13),
              child: BookSliverListIteam(),
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}
