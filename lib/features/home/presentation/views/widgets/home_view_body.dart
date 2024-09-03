import 'package:bookly/core/styles/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'feautred_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CusotmAppBar(),
            FeaturedBooksListView(),
            SizedBox(
              height: 40,
            ),
            Text(
              "Best Seller",
              style: Styles.mediumTilte,
            )
          ],
        ),
      ),
    );
  }
}
