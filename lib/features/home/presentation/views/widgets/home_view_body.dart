import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'feautred_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CusotmAppBar(),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
