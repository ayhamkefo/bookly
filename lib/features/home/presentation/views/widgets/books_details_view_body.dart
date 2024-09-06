import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'similar_books_section.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: kPadding, horizontal: kPadding),
                child: BooksDetailsSection(),
              ),
              SizedBox(
                height: 25,
              ),
              SimilarBooksSection(),
            ],
          ),
        )
      ],
    );
  }
}
