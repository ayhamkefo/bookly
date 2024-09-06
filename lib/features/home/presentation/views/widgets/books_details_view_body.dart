import 'package:bookly/constants.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_books_limage.dart';
import 'package:flutter/material.dart';

import 'books_details_custom_app_bar.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: kPadding, horizontal: kPadding),
      child: Column(
        children: [
          const BooksDetailsCustomAppBar(),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * .22, vertical: kPadding),
              child: const CustomBooksImage()),
        ],
      ),
    );
  }
}
