import 'package:bookly/core/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_details_sliver_list.dart';
import 'book_image_sliver_list.dart';

class BookSliverListIteam extends StatelessWidget {
  const BookSliverListIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(Routers.kBookDetailsView),
      child: const Row(
        children: [
          BookImageSliverList(),
          SizedBox(
            width: 30,
          ),
          BookDetailsSliverList()
        ],
      ),
    );
  }
}
