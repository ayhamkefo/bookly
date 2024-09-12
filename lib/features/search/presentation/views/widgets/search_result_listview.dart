import 'package:flutter/material.dart';

import '../../../../home/data/models/book_model/book_model.dart';
import '../../../../home/presentation/views/widgets/home_widgets/books_listview_iteam.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookModel});
  final List<BookModel> bookModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: bookModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: BooksListViewIteam(book: bookModel[index]),
        );
      },
    );
  }
}
