import 'package:flutter/material.dart';

import 'feautred_books_listview_iteam.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: FeautredBooksListviewIteam(),
          );
        },
      ),
    );
  }
}
