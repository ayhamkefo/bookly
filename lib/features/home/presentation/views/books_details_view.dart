import 'package:flutter/material.dart';

import 'widgets/books_details_widgets/books_details_view_body.dart';

class BooksDeatailsVeiw extends StatelessWidget {
  const BooksDeatailsVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BooksDetailsViewBody(),
    );
  }
}
