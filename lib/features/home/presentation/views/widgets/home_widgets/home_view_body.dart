import 'package:flutter/material.dart';

import 'fearued_books_section.dart';
import 'newest_books_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: FeaturedBooksSection(),
      ),
      SliverToBoxAdapter(
        child: NewestBooksSection(),
      )
    ]);
  }
}
